.class Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$3;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)V
    .locals 0

    .prologue
    .line 126
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$3;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$3;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-virtual {v0}, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;->finish()V

    .line 130
    return-void
.end method
