.class final Lcom/alipay/android/phone/messageboxapp/ui/l;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/j;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/j;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    iput-object p2, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->deleteMsgByIdList(Ljava/util/List;)I

    move-result v0

    .line 216
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result are : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 222
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 224
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "messageboxRpcService.operateByMsgIdList request are : DELETE,"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v3

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    .line 228
    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 228
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 225
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 223
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mmmbbbxxx/b/a;

    move-result-object v0

    .line 230
    const-string/jumbo v1, "DELETE"

    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->a:Lcom/alipay/android/phone/messageboxapp/ui/j;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/j;->a(Lcom/alipay/android/phone/messageboxapp/ui/j;)Lcom/alipay/android/phone/messageboxapp/ui/h;

    move-result-object v2

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    .line 231
    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    .line 229
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mmmbbbxxx/b/a;->operateByMsgIdList(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 232
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "rpcResult are : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    .line 236
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v2

    .line 237
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8c03\u7528\u901a\u77e5\u4e2d\u5fc3rpc\u51fa\u9519\uff1adeleteMsgByIdList, deleteMsgByIdList =   "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 238
    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/l;->b:Ljava/util/List;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 237
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 236
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
