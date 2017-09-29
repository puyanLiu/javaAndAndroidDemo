.class Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$2;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity$2;->this$0:Lcom/alipay/security/mobile/alipayauthenticatorservice/bracelet/ui/AuthActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .prologue
    .line 120
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 121
    return-void
.end method
