.class final Lcom/alipay/mobile/socialsdk/chat/processer/i;
.super Ljava/lang/Object;
.source "ChatMsgSender.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender$RequestFilter;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

.field private final synthetic b:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/i;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/i;->b:Ljava/lang/String;

    .line 177
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)Z
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/processer/i;->b:Ljava/lang/String;

    invoke-interface {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
