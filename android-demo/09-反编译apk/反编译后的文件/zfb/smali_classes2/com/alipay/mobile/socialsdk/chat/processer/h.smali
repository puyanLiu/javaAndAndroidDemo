.class final Lcom/alipay/mobile/socialsdk/chat/processer/h;
.super Ljava/lang/Object;
.source "ChatMsgSender.java"

# interfaces
.implements Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender$RequestFilter;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

.field private final synthetic b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/h;->a:Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/processer/h;->b:Ljava/lang/Object;

    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;)Z
    .locals 2

    .prologue
    .line 166
    invoke-interface {p1}, Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/processer/h;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
