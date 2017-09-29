.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;
.super Ljava/lang/Object;
.source "MorePageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;Z)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;

    iput-boolean p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ad;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;Z)V

    .line 84
    :cond_0
    return-void
.end method
