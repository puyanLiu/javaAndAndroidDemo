.class final Lcom/alipay/mobile/socialsdk/contact/ui/bw;
.super Ljava/lang/Object;
.source "SignaturePageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bw;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 109
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bw;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bw;->a:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;)V

    .line 113
    :cond_0
    return-void
.end method
