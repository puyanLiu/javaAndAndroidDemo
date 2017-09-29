.class final Lcom/alipay/mobile/socialsdk/chat/processer/g;
.super Landroid/os/Handler;
.source "ChatMsgSender.java"


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/g;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    .line 52
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 55
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 56
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/g;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;->a(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;)V

    .line 58
    :cond_0
    return-void
.end method
