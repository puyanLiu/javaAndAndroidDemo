.class public interface abstract Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
.super Ljava/lang/Object;
.source "IRequest.java"


# virtual methods
.method public abstract canRetry()Z
.end method

.method public abstract cancel()V
.end method

.method public abstract getChatMsgSender()Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;
.end method

.method public abstract getMaxTryCount()I
.end method

.method public abstract getRequestId()Ljava/lang/String;
.end method

.method public abstract getTag()Ljava/lang/Object;
.end method

.method public abstract getTimeOutMillions()J
.end method

.method public abstract getTryCount()I
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isDirectSend()Z
.end method

.method public abstract onFail()V
.end method

.method public abstract onFinish()V
.end method

.method public abstract onResourceUploaded()V
.end method

.method public abstract onSucceed()V
.end method

.method public abstract retry()V
.end method

.method public abstract sendMessage()Z
.end method

.method public abstract setMaxTryCount(I)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
.end method

.method public abstract setMsgSender(Lcom/alipay/mobile/socialsdk/chat/processer/ChatMsgSender;)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
.end method

.method public abstract setRequestId(Ljava/lang/String;)V
.end method

.method public abstract setTag(Ljava/lang/Object;)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
.end method

.method public abstract setTimeOutMillions(J)Lcom/alipay/mobile/socialsdk/chat/processer/request/IRequest;
.end method

.method public abstract uploadResource()Z
.end method
