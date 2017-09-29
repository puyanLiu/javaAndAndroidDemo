.class final Lcom/alipay/mobile/socialsdk/contact/ui/ba;
.super Ljava/lang/Object;
.source "PersonalProfileMoreActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;)V
    .locals 0

    .prologue
    .line 76
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ba;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ba;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ba;->a:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileMoreActivity_;)V

    .line 85
    :cond_0
    return-void
.end method
