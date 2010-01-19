/*
 * OpenWMS, the Open Warehouse Management System
 * 
 * Distributable under LGPL license.
 * See terms of license at gnu.org.
 */
package org.openwms.web.flex.client.command
{
	import com.adobe.cairngorm.commands.ICommand;
	import com.adobe.cairngorm.control.CairngormEvent;
	
	import mx.collections.ArrayCollection;
	import mx.controls.Alert;
	import mx.rpc.IResponder;
	import mx.rpc.events.ResultEvent;
	
	import org.openwms.common.domain.system.usermanagement.User;
	import org.openwms.web.flex.client.business.UserDelegate;
	import org.openwms.web.flex.client.model.ModelLocator;

	/**
	 * A LoadUsersCommand.
	 * 
	 * @author <a href="mailto:openwms@googlemail.com">Heiko Scherrer</a>
	 * @version $Revision: 235 $
	 */
	public class LoadUsersCommand implements ICommand, IResponder {
		[Bindable]
		private var modelLocator:ModelLocator = ModelLocator.getInstance();

		public function LoadUsersCommand() {
			super();
		}

		public function execute(event:CairngormEvent):void {
			if (modelLocator.allUsers.length == 0) {
				var delegate:UserDelegate = new UserDelegate(this)
				delegate.getUsers();
			}
		}
		
		public function result(data:Object):void {
			modelLocator.allUsers = ArrayCollection(data.result);
			if (modelLocator.allUsers.length > 0) {
				modelLocator.selectedUser = modelLocator.allUsers.getItemAt(0) as User;
			}
		}
		
		public function fault(info:Object):void {
			Alert.show("Fault in ["+this+"] Errormessage : "+info);
		}
		
	}
}