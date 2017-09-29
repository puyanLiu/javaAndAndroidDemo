.class final Lcom/alipay/android/phone/messageboxapp/ui/n;
.super Ljava/lang/Object;
.source "MsgboxListFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/messageboxapp/ui/h;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/messageboxapp/ui/h;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    .line 487
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .prologue
    .line 489
    const/4 v0, 0x0

    .line 490
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "TODO"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 491
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    .line 492
    const-string/jumbo v1, "TODO"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->queryInitMsgByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 491
    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    .line 497
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_2

    .line 541
    :cond_0
    :goto_1
    return-void

    .line 493
    :cond_1
    iget-object v1, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v1}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "NOTICE"

    invoke-static {v1, v2}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 494
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    .line 495
    const-string/jumbo v1, "NOTICE"

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->queryInitMsgByType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 494
    check-cast v0, Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_0

    .line 500
    :cond_2
    const/4 v0, 0x0

    .line 503
    :try_start_0
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "TODO"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 504
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    const-string/jumbo v2, "TODO"

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->readMsgByType(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    .line 513
    :cond_3
    :goto_2
    if-lez v0, :cond_0

    .line 518
    :try_start_1
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->l(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/messageboxstatic/api/FriendstabAccessService;->updateFriendsExternal()V

    .line 520
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 521
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_5

    .line 525
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->a(Ljava/util/ArrayList;)V

    .line 527
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    .line 529
    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v1

    .line 530
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "messageboxRpcService.operateByType request are : READ , "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 532
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 533
    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 530
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 528
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->n(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mmmbbbxxx/b/a;

    move-result-object v0

    const-string/jumbo v1, "READ"

    .line 535
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->m(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/mobile/framework/service/ext/security/AuthService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/AuthService;->getUserInfo()Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/framework/service/ext/security/bean/UserInfo;->getUserId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v3}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v3

    .line 534
    invoke-interface {v0, v1, v2, v3}, Lcom/alipay/mmmbbbxxx/b/a;->operateByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/alipay/mmmbbbxxx/d/b;

    move-result-object v0

    .line 536
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "result are : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 537
    :catch_0
    move-exception v0

    .line 538
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v2

    .line 539
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u8c03\u7528\u6d88\u606f\u4e2d\u5fc3rpc\u51fa\u9519\uff1a \u6d88\u606f\u7c7b\u578b :"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v4}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 538
    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 505
    :cond_4
    :try_start_2
    iget-object v2, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v2}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "NOTICE"

    invoke-static {v2, v3}, Lcom/alipay/mobile/common/utils/StringUtils;->equals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 506
    iget-object v0, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v0}, Lcom/alipay/android/phone/messageboxapp/ui/h;->k(Lcom/alipay/android/phone/messageboxapp/ui/h;)Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;

    move-result-object v0

    const-string/jumbo v2, "NOTICE"

    invoke-virtual {v0, v2}, Lcom/alipay/android/phone/messageboxstatic/api/MsgboxInfoService;->readMsgByType(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result v0

    goto/16 :goto_2

    .line 508
    :catch_1
    move-exception v0

    .line 509
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    invoke-static {}, Lcom/alipay/android/phone/messageboxapp/ui/h;->f()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "\u672c\u5730\u6570\u636e\u5e93\u8bbe\u7f6e\u6d88\u606f\u5df2\u8bfb\u51fa\u9519\u51fa\u9519,\u6d88\u606f\u7c7b\u578b"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/alipay/android/phone/messageboxapp/ui/n;->a:Lcom/alipay/android/phone/messageboxapp/ui/h;

    invoke-static {v4}, Lcom/alipay/android/phone/messageboxapp/ui/h;->o(Lcom/alipay/android/phone/messageboxapp/ui/h;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 521
    :cond_5
    :try_start_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;

    .line 523
    iget-object v0, v0, Lcom/alipay/android/phone/messageboxstatic/api/model/MessageInfo;->msgId:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_3

    :cond_6
    move-object v1, v0

    goto/16 :goto_0
.end method
