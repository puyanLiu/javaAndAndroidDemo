.class Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->this$0:Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;

    iput-object p2, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$action:Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_TAB_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->tabModuleMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->this$0:Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;

    invoke-static {v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;->access$000(Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    sget-object v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->tabModuleMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->exit(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    :cond_0
    if-eqz v1, :cond_1

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->enter(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->this$0:Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;

    invoke-static {v0, v2}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;->access$002(Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$action:Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.mobile.LAUNCHER_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants;->tabModuleMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->this$0:Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;

    invoke-static {v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;->access$000(Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "data"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string/jumbo v2, "state=onPause"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->exit(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "state=onResume"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->enter(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$action:Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.security.login"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "KcartMsgReceiver"

    const-string/jumbo v2, "login"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v2, "userId"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->login(Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$action:Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.security.logout"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "KcartMsgReceiver"

    const-string/jumbo v2, "logout"

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->logout()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$action:Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.mobile.h5container.pageFinished"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$intent:Landroid/content/Intent;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    const-string/jumbo v2, "\u624b\u673a\u6dd8\u5b9d"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_MRCHT:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    :cond_8
    :goto_1
    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->enter(Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;)V

    goto/16 :goto_0

    :cond_9
    const-string/jumbo v2, "\u6dd8\u5b9d\u4f17\u7b79"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_FIN:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    goto :goto_1

    :cond_a
    const-string/jumbo v2, "\u670d\u52a1\u5927\u5385"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    sget-object v0, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;->MODULE_QUESTION:Lcom/alipay/android/phone/secauthenticator/kcart/Constants$ModuleName;

    goto :goto_1

    :cond_b
    iget-object v0, p0, Lcom/alipay/android/phone/secauthenticator/kcart/KcartMsgReceiver$1;->val$action:Ljava/lang/String;

    const-string/jumbo v1, "com.alipay.mobile.framework.USERLEAVEHINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getInstance()Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/KcartEngine;->getDecayValues()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v2, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;

    invoke-direct {v2}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;-><init>()V

    const-string/jumbo v1, "UC-FFC-150204-01"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setUserCaseID(Ljava/lang/String;)V

    const-string/jumbo v1, "behavior_decay"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setParam1(Ljava/lang/String;)V

    const-string/jumbo v1, "decay"

    invoke-virtual {v2, v1}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->setSeedID(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->getValue()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_c

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;

    invoke-virtual {v1}, Lcom/alipay/android/phone/secauthenticator/kcart/Constants$DecayVariableName;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->getValue()D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/alipay/android/phone/secauthenticator/kcart/VariableValue;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lcom/alipay/mobile/common/logging/api/behavor/Behavor;->addExtParam(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getBehavorLogger()Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/alipay/mobile/common/logging/api/behavor/BehavorLogger;->openPage(Lcom/alipay/mobile/common/logging/api/behavor/Behavor;)V

    goto/16 :goto_0
.end method
