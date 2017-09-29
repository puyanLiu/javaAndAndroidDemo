.class final Lcom/alipay/mobile/socialsdk/contact/ui/ar;
.super Ljava/lang/Object;
.source "PersonalProfileActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;I)V
    .locals 0

    .prologue
    .line 154
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ar;->b:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    iput p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ar;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ar;->b:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ar;->b:Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;

    iget v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/ar;->a:I

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/PersonalProfileActivity_;I)V

    .line 163
    :cond_0
    return-void
.end method
