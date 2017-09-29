.class final Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;
.super Ljava/lang/Object;
.source "MoreChatMessageActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Z)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    iput-boolean p2, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->b:Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;

    iget-boolean v1, p0, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/w;->a:Z

    invoke-static {v0, v1}, Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;->a(Lcom/alipay/android/phone/businesscommon/globalsearch/ui/MoreChatMessageActivity_;Z)V

    .line 98
    :cond_0
    return-void
.end method
