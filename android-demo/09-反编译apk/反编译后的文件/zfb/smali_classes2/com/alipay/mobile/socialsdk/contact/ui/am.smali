.class final Lcom/alipay/mobile/socialsdk/contact/ui/am;
.super Ljava/lang/Object;
.source "PersonalProfileActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V
    .locals 0

    .prologue
    .line 122
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/am;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/am;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/am;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;)V

    .line 131
    :cond_0
    return-void
.end method
