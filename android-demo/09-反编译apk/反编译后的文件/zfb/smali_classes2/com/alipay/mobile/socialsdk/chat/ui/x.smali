.class final Lcom/alipay/mobile/socialsdk/chat/ui/x;
.super Ljava/lang/Object;
.source "ShareEntryActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/personalbase/model/ShareModel;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/x;->b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/x;->a:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/x;->b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/x;->b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/x;->a:Lcom/alipay/mobile/personalbase/model/ShareModel;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Lcom/alipay/mobile/personalbase/model/ShareModel;)V

    .line 88
    :cond_0
    return-void
.end method
