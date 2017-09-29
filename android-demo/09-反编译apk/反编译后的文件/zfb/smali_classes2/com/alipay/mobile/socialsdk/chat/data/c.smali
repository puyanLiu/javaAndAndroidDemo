.class final Lcom/alipay/mobile/socialsdk/chat/data/c;
.super Ljava/lang/Object;
.source "SocialSdkChatServiceImpl.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/contact/ShareResultCallback;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->a:Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->b:Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;

    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onShareCanceled()V
    .locals 4

    .prologue
    .line 336
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->b:Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->a:Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a(Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "mPassShare callback cancel"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->b:Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;

    const/16 v1, 0x400

    .line 339
    new-instance v2, Lcom/alipay/mobile/common/share/ShareException;

    const/16 v3, 0x3e9

    invoke-direct {v2, v3}, Lcom/alipay/mobile/common/share/ShareException;-><init>(I)V

    .line 338
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;->onException(ILcom/alipay/mobile/common/share/ShareException;)V

    .line 341
    :cond_0
    return-void
.end method

.method public final onShareSucceed(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 328
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->b:Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->a:Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;->a(Lcom/alipay/mobile/socialsdk/chat/data/SocialSdkChatServiceImpl;)Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "SocialSdk_Sdk"

    const-string/jumbo v2, "mPassShare callback succeed"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->verbose(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/data/c;->b:Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;

    const/16 v1, 0x400

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;->onComplete(I)V

    .line 332
    :cond_0
    return-void
.end method
