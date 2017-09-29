.class public Lcom/alipay/mobile/common/ipc/biz/LocalCallManagerImpl;
.super Ljava/lang/Object;
.source "LocalCallManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/ipc/api/LocalCallManager;


# static fields
.field private static final TAG:Ljava/lang/String; = "IPC_LocalCallManager"


# instance fields
.field private serviceBeanManager:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/LocalCallManagerImpl;->serviceBeanManager:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    .line 31
    return-void
.end method

.method private equals([Ljava/lang/Class;[Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 133
    move v0, v1

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 134
    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p2, v0

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 138
    :goto_1
    return v1

    .line 133
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 138
    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method private getMethod(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;Ljava/lang/Object;)Ljava/lang/reflect/Method;
    .locals 8

    .prologue
    .line 115
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 116
    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 117
    iget-object v4, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->methodName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 121
    iget-object v5, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    .line 122
    array-length v6, v4

    array-length v7, v5

    if-ne v6, v7, :cond_0

    .line 123
    invoke-direct {p0, v4, v5}, Lcom/alipay/mobile/common/ipc/biz/LocalCallManagerImpl;->equals([Ljava/lang/Class;[Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 129
    :goto_1
    return-object v0

    .line 116
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 129
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;
    .locals 8

    .prologue
    .line 35
    const-string/jumbo v0, "IPC_LocalCallManager"

    const-string/jumbo v1, "start local call"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/LocalCallManagerImpl;->serviceBeanManager:Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;

    iget-object v1, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/ipc/api/ServiceBeanManager;->getServiceBean(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 38
    if-nez v2, :cond_0

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Service not found. className=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 41
    const/16 v1, 0x64

    iput v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 42
    const-string/jumbo v1, "Service bean not found"

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    .line 110
    :goto_0
    return-object v0

    .line 45
    :cond_0
    const-string/jumbo v0, "IPC_LocalCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "serviceBean=["

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1, v2}, Lcom/alipay/mobile/common/ipc/biz/LocalCallManagerImpl;->getMethod(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;Ljava/lang/Object;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 48
    if-nez v3, :cond_1

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "Method not found. className=["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 51
    const/16 v1, 0x65

    iput v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 52
    const-string/jumbo v1, "Method not found"

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    goto :goto_0

    .line 55
    :cond_1
    const-string/jumbo v0, "IPC_LocalCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "method=["

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iget-object v0, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->returnType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 58
    const-string/jumbo v0, "IPC_LocalCallManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Not the same returnType, peer returnType=["

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->returnType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] local returnType=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 60
    const/16 v1, 0x69

    iput v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 61
    const-string/jumbo v1, "Method not found"

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 65
    :cond_2
    iget-object v4, p1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramValues:Ljava/util/List;

    .line 66
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 67
    if-eqz v4, :cond_3

    array-length v0, v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 68
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 69
    const/16 v1, 0x66

    iput v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 70
    const-string/jumbo v1, "The number of parameters does not match"

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 74
    :cond_3
    array-length v0, v5

    new-array v6, v0, [Ljava/lang/Object;

    .line 75
    array-length v0, v5

    if-lez v0, :cond_4

    .line 77
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    :try_start_0
    array-length v0, v5

    if-ge v1, v0, :cond_4

    .line 78
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-object v7, v5, v1

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v0, v7}, Lcom/alipay/mobile/common/ipc/biz/util/ObjSerializUtil;->deserializ([BLjava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v0

    aput-object v0, v6, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    move-object v1, v0

    .line 81
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 83
    const/16 v2, 0x67

    iput v2, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 84
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Param deserializ error. exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 90
    :cond_4
    :try_start_1
    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 91
    if-nez v0, :cond_5

    .line 92
    const-string/jumbo v0, "IPC_LocalCallManager"

    const-string/jumbo v1, "invoke success, result is void"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0

    .line 105
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 106
    const-string/jumbo v0, "IPC_LocalCallManager"

    const-string/jumbo v2, "LocalCallManager Exception"

    invoke-static {v0, v2, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 107
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v0}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 108
    const/16 v2, 0x68

    iput v2, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Invoke method error. exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    goto/16 :goto_0

    .line 95
    :cond_5
    :try_start_2
    new-instance v1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    invoke-direct {v1}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;-><init>()V

    .line 96
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultType:Ljava/lang/String;

    .line 97
    check-cast v0, Ljava/io/Serializable;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/biz/util/ObjSerializUtil;->serializ(Ljava/io/Serializable;)[B

    move-result-object v0

    iput-object v0, v1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B

    .line 102
    const-string/jumbo v2, "IPC_LocalCallManager"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v0, "invoke success, result value type = "

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 103
    goto/16 :goto_0

    .line 102
    :cond_6
    const-string/jumbo v0, "is null"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2
.end method
