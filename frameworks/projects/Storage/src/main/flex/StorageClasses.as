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
package
{

/**
 *  @private
 *  This class is used to link additional classes into rpc.swc
 *  beyond those that are found by dependency analysis starting
 *  from the classes specified in manifest.xml.
 */
internal class StorageClasses
{
    import org.apache.flex.storage.LocalStorage; LocalStorage;
    import org.apache.flex.storage.providers.LocalStorageProvider; LocalStorageProvider;

	import org.apache.flex.storage.PermanentStorage; PermanentStorage;
	import org.apache.flex.storage.events.FileEvent; FileEvent;
	import org.apache.flex.storage.events.FileErrorEvent; FileErrorEvent;
	
	import org.apache.flex.storage.file.DataInputStream; DataInputStream;
	import org.apache.flex.storage.file.DataOutputStream; DataOutputStream;

	import org.apache.flex.storage.providers.AirStorageProvider; AirStorageProvider;
	import org.apache.flex.storage.providers.WebStorageProvider; WebStorageProvider;

}

}

