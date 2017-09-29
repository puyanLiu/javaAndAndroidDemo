.class final Lcom/alipay/mobile/socialsdk/chat/ui/y;
.super Ljava/lang/Object;
.source "ShareEntryActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 95
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/y;->b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/ui/y;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/y;->b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/y;->b:Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/y;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareEntryActivity_;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method
