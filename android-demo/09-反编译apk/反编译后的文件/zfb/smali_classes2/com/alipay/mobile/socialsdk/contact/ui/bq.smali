.class final Lcom/alipay/mobile/socialsdk/contact/ui/bq;
.super Ljava/lang/Object;
.source "SetRemarkNameActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 78
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bq;->b:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bq;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bq;->b:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bq;->b:Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/ui/bq;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;->a(Lcom/alipay/mobile/socialsdk/contact/ui/SetRemarkNameActivity_;Ljava/lang/String;)V

    .line 87
    :cond_0
    return-void
.end method
