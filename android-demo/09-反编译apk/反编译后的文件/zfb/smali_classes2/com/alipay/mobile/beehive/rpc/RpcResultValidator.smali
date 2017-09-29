.class public Lcom/alipay/mobile/beehive/rpc/RpcResultValidator;
.super Ljava/lang/Object;
.source "RpcResultValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static assertValidResult(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 19
    const-string/jumbo v0, "success"

    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {p0, v0, v1}, Lcom/alipay/mobile/beehive/rpc/RpcResultValidator;->isValidFieldPrimitiveType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rpc result must have public [boolean success] field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_0
    const-string/jumbo v0, "followAction"

    invoke-static {p0, v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->getFieldByReflect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 24
    if-eqz v0, :cond_1

    invoke-static {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->isFieldPublic(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 25
    const-class v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 26
    :cond_1
    sget-boolean v0, Lcom/alipay/mobile/beehive/rpc/RpcSettings;->supportShowType:Z

    if-nez v0, :cond_2

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "rpc result must have public [json followAction] field"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "RpcRunner"

    .line 30
    const-string/jumbo v2, "rpc result should have public [json followAction] field"

    .line 29
    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :cond_3
    :goto_0
    return-void

    .line 33
    :cond_4
    const/4 v1, 0x0

    .line 35
    :try_start_0
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 40
    invoke-static {v0}, Lcom/alipay/mobile/beehive/rpc/RpcResultValidator;->assertValidResultAction(Ljava/lang/String;)V

    goto :goto_0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v2

    const-string/jumbo v3, "RpcRunner"

    invoke-interface {v2, v3, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_1
.end method

.method public static assertValidResultAction(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Lcom/alipay/mobile/beehive/rpc/RpcResultValidator$1;

    invoke-direct {v0}, Lcom/alipay/mobile/beehive/rpc/RpcResultValidator$1;-><init>()V

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/alibaba/fastjson/parser/Feature;

    invoke-static {p0, v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Lcom/alibaba/fastjson/TypeReference;[Lcom/alibaba/fastjson/parser/Feature;)Ljava/lang/Object;

    .line 53
    return-void
.end method

.method private static isValidField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 56
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->getFieldByReflect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->isFieldPublic(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isValidFieldPrimitiveType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->getFieldByReflect(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 62
    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/alipay/mobile/beehive/rpc/RpcUtil;->isFieldPublic(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
