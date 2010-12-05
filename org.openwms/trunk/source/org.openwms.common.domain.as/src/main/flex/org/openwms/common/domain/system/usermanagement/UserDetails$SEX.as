/**
 * Generated by Gas3 v2.0.0 (Granite Data Services).
 *
 * WARNING: DO NOT CHANGE THIS FILE. IT MAY BE OVERWRITTEN EACH TIME YOU USE
 * THE GENERATOR.
 */

package org.openwms.common.domain.system.usermanagement {

    import org.granite.util.Enum;

    [Bindable]
    [RemoteClass(alias="org.openwms.common.domain.system.usermanagement.UserDetails$SEX")]
    /**
     * The <code>User</code>s sex.
     * 
     * @version $Revision$
     * @since 0.1
     * @see org.openwms.common.domain.system.usermanagement.User
     */
    public class UserDetails$SEX extends Enum {

        public static const MALE:UserDetails$SEX = new UserDetails$SEX("MALE", _);
        public static const FEMALE:UserDetails$SEX = new UserDetails$SEX("FEMALE", _);

        function UserDetails$SEX(value:String = null, restrictor:* = null) {
            super((value || MALE.name), restrictor);
        }

        override protected function getConstants():Array {
            return constants;
        }

        public static function get constants():Array {
            return [MALE, FEMALE];
        }

        public static function valueOf(name:String):UserDetails$SEX {
            return UserDetails$SEX(MALE.constantOf(name));
        }
    }
}