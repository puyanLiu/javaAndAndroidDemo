.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;
.super Ljava/lang/Object;
.source "MoreChatMessageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    iput-object p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/v;->a:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Ljava/util/List;)V

    .line 82
    :cond_0
    return-void
.end method
