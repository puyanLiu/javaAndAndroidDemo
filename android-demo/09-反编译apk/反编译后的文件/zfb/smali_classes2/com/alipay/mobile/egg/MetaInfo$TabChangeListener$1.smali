.class Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener$1;
.super Ljava/lang/Object;
.source "MetaInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$1:Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener$1;->this$1:Lcom/alipay/mobile/egg/MetaInfo$TabChangeListener;

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const-wide/16 v2, 0x0

    .line 46
    const-string/jumbo v0, "egg_config_list"

    invoke-static {v0}, Lcom/alipay/mobile/egg/util/EggHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/mobile/egg/chatapp/EggMgr;->getInstance()Lcom/alipay/mobile/egg/chatapp/EggMgr;

    .line 51
    :cond_0
    const-string/jumbo v0, "egg_config_version"

    invoke-static {v0}, Lcom/alipay/mobile/egg/util/EggHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 53
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 58
    :goto_0
    const-string/jumbo v4, "egg_config_next_version"

    invoke-static {v4}, Lcom/alipay/mobile/egg/util/EggHelper;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 59
    invoke-static {v4}, Lcom/alipay/mobile/common/utils/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 60
    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 62
    :goto_1
    cmp-long v2, v0, v2

    if-eqz v2, :cond_1

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    .line 63
    :cond_1
    new-instance v2, Lcom/alipay/mobile/egg/rpc/EggConfigRpcTask;

    invoke-direct {v2}, Lcom/alipay/mobile/egg/rpc/EggConfigRpcTask;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v4, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-virtual {v2, v3}, Lcom/alipay/mobile/egg/rpc/EggConfigRpcTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :cond_2
    return-void

    :cond_3
    move-wide v4, v2

    goto :goto_1

    :cond_4
    move-wide v0, v2

    goto :goto_0
.end method
