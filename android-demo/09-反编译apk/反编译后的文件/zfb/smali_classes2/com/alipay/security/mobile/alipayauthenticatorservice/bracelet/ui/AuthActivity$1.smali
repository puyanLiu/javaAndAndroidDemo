.class Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "AuthActivity.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 50
    if-nez p2, :cond_1

    .line 86
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 55
    :cond_1
    :try_start_0
    const-string/jumbo v0, "com.alipay.security.mobile.extra.BRACELET_STATUS"

    const/4 v2, -0x1

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 59
    :goto_1
    if-eq v0, v1, :cond_0

    .line 62
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 79
    :sswitch_1
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->access$000(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 80
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-static {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->access$000(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    :cond_2
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$1;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->finish()V

    goto :goto_0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_1

    .line 62
    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_0
        0x0 -> :sswitch_0
        0x3 -> :sswitch_0
        0x4 -> :sswitch_0
        0x5 -> :sswitch_0
        0x6 -> :sswitch_1
        0x64 -> :sswitch_0
        0x66 -> :sswitch_0
        0x67 -> :sswitch_0
        0x71 -> :sswitch_0
    .end sparse-switch
.end method
