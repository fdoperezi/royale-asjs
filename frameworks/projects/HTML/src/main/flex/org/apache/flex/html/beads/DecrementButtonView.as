////////////////////////////////////////////////////////////////////////////////
//
//  Licensed to the Apache Software Foundation (ASF) under one or more
//  contributor license agreements.  See the NOTICE file distributed with
//  this work for additional information regarding copyright ownership.
//  The ASF licenses this file to You under the Apache License, Version 2.0
//  (the "License"); you may not use this file except in compliance with
//  the License.  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//
////////////////////////////////////////////////////////////////////////////////
package org.apache.flex.html.beads
{
	import org.apache.flex.core.BeadViewBase;
	import org.apache.flex.core.IBeadView;
	import org.apache.flex.core.IStrand;
	import org.apache.flex.core.UIBase;
	import org.apache.flex.core.graphics.Path;
	import org.apache.flex.core.graphics.Rect;
	import org.apache.flex.core.graphics.SolidColor;
	import org.apache.flex.core.graphics.SolidColorStroke;
	import org.apache.flex.events.Event;

	public class DecrementButtonView extends BeadViewBase implements IBeadView
	{
		public function DecrementButtonView()
		{
			super();
		}

		private var _backRect:Rect;
		private var _arrow:Path;

		/**
		 *  @copy org.apache.flex.core.IBead#strand
		 *
		 *  @langversion 3.0
		 *  @playerversion Flash 10.2
		 *  @playerversion AIR 2.6
		 *  @productversion FlexJS 0.0
		 */
		override public function set strand(value:IStrand):void
		{
			super.strand = value;
			_strand = value;

			var host:UIBase = _strand as UIBase;

			_backRect = new Rect();
			_backRect.fill = new SolidColor();
			(_backRect.fill as SolidColor).color = 0xFFFFFF;
			_backRect.stroke = new SolidColorStroke();
			(_backRect.stroke as SolidColorStroke).color = 0x000000;
			(_backRect.stroke as SolidColorStroke).weight = 1.0;
			host.addElement(_backRect);

			// arrow
			_arrow = new Path();
			_arrow.fill = new SolidColor();
			(_arrow.fill as SolidColor).color = 0x000000;
			host.addElement(_arrow);

			host.addEventListener("widthChanged", sizeHandler);
			host.addEventListener("heightChanged", sizeHandler);

			sizeHandler(null);
		}

		private function sizeHandler(event:Event):void
		{
			var host:UIBase = _strand as UIBase;

			_backRect.x = 0;
			_backRect.y = 0;
			_backRect.setWidthAndHeight(host.width, host.height, true);
			_backRect.drawRect(0, 0, host.width, host.height);

			var xm:Number = host.width/2;
			var ym:Number = host.height - 4;

			_arrow.setWidthAndHeight(xm, ym, true);
			_arrow.y = 2;
			_arrow.x = 0;
			_arrow.drawPath(0, 0, "M "+String(xm)+" "+String(ym)+" L "+String(xm-8)+" 2 "+String(xm+8)+" 2 "+String(xm)+" "+String(ym)+" Z");
		}
	}
}
