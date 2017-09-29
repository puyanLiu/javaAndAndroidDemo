.class final Lcom/alipay/mobile/socialsdk/contact/ui/ak;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ak;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 1038
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 1041
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ak;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->setOrCancelBlacklistByRpc(Z)V

    .line 1042
    return-void
.end method
