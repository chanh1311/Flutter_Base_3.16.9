
class ConnectSetting {
  int userid;
  bool? enable_notify;
  bool? enable_zalo;
  bool? enable_facebook;
  bool? enable_whatsapp;
  bool? enable_wechat;
  String? zalo_user_id;
  String? facebook_psid;
  String? wechat_phone_number;

  ConnectSetting({
    required this.userid,
    this.enable_notify,
    this.enable_zalo,
    this.enable_facebook,
    this.enable_whatsapp,
    this.enable_wechat,
    this.zalo_user_id,
    this.facebook_psid,
    this.wechat_phone_number,
  });
}
