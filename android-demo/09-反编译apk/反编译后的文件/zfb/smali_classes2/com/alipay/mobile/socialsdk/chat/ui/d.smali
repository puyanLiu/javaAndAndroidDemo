.class final Lcom/alipay/mobile/socialsdk/chat/ui/d;
.super Ljava/lang/Object;
.source "ShareDialogActivity_.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/ui/d;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/d;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;

    invoke-virtual {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/ui/d;->a:Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;->a(Lcom/alipay/mobile/socialsdk/chat/ui/ShareDialogActivity_;)V

    .line 75
    :cond_0
    return-void
.end method
