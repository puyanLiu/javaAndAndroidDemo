.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;
.super Ljava/lang/Object;
.source "MorePageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;->c:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/ae;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MorePageActivity_;Ljava/util/List;Ljava/lang/String;)V

    .line 100
    :cond_0
    return-void
.end method
