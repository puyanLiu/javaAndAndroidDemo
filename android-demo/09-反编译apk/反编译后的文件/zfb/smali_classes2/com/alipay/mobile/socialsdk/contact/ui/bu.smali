.class final Lcom/alipay/mobile/socialsdk/contact/ui/bu;
.super Ljava/lang/Object;
.source "SignaturePageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bu;->b:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bu;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bu;->b:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bu;->b:Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bu;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/SignaturePageActivity_;Ljava/lang/String;)V

    .line 81
    :cond_0
    return-void
.end method
