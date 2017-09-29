.class final Lcom/alipay/mobile/socialsdk/contact/ui/aj;
.super Ljava/lang/Object;
.source "PersonalProfileActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aj;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    .line 956
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 959
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/aj;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;

    iget-object v0, v0, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity;->w:Lcom/alipay/mobile/commonui/widget/APButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/commonui/widget/APButton;->setEnabled(Z)V

    .line 960
    return-void
.end method
