.class Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;
.super Ljava/lang/Object;
.source "IPCCallManagerImpl.java"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;->this$0:Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$1;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;-><init>(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)V

    return-void
.end method

.method private doInvoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 65
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;->this$0:Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->access$100(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 66
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "You must set IIPCManager. example: IPCCallManager#setIIPCManager"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_1
    const-string/jumbo v0, "IPC_IPCCallManager"

    const-string/jumbo v2, "IPCCallProxyHandler#invoke"

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 77
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    .line 79
    new-instance v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;

    invoke-direct {v3}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;-><init>()V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->className:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->methodName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->returnType:Ljava/lang/String;

    .line 84
    array-length v0, v2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    move v0, v1

    .line 85
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_2

    .line 86
    iget-object v4, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    aget-object v5, v2, v0

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_2
    iget-object v0, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_3

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v2, v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramValues:Ljava/util/List;

    move v2, v1

    .line 91
    :goto_1
    iget-object v0, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramTypes:[Ljava/lang/String;

    array-length v0, v0

    if-ge v2, v0, :cond_3

    .line 92
    iget-object v4, v3, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->paramValues:Ljava/util/List;

    aget-object v0, p2, v2

    check-cast v0, Ljava/io/Serializable;

    invoke-static {v0}, Lcom/alipay/mobile/common/ipc/biz/util/ObjSerializUtil;->serializ(Ljava/io/Serializable;)[B

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 96
    :cond_3
    const-string/jumbo v0, "IPC_IPCCallManager"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "start ipc call. ipcParameter=["

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "]"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lcom/alipay/mobile/common/ipc/biz/IPCCallable;

    iget-object v2, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;->this$0:Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->access$100(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/alipay/mobile/common/ipc/biz/IPCCallable;-><init>(Lcom/alipay/mobile/common/ipc/api/aidl/IIPCManager;)V

    invoke-virtual {v0, v3}, Lcom/alipay/mobile/common/ipc/biz/IPCCallable;->call(Lcom/alipay/mobile/common/ipc/api/aidl/IPCParameter;)Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;

    move-result-object v0

    .line 102
    if-nez v0, :cond_4

    .line 103
    :try_start_0
    new-instance v0, Lcom/alipay/mobile/common/ipc/api/IPCException;

    const/16 v2, 0x6a

    const-string/jumbo v3, "Returns the ipcResult is null"

    invoke-direct {v0, v2, v3}, Lcom/alipay/mobile/common/ipc/api/IPCException;-><init>(ILjava/lang/String;)V

    throw v0
    :try_end_0
    .catch Lcom/alipay/mobile/common/ipc/api/IPCException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    iget-object v2, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;->this$0:Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->access$200(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;

    move-result-object v2

    if-nez v2, :cond_5

    .line 111
    throw v0

    .line 106
    :cond_4
    :try_start_1
    iget v2, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    if-eqz v2, :cond_6

    .line 107
    new-instance v2, Lcom/alipay/mobile/common/ipc/api/IPCException;

    iget v3, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultCode:I

    iget-object v0, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultMsg:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Lcom/alipay/mobile/common/ipc/api/IPCException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Lcom/alipay/mobile/common/ipc/api/IPCException; {:try_start_1 .. :try_end_1} :catch_0

    .line 113
    :cond_5
    iget-object v2, p0, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;->this$0:Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;

    invoke-static {v2}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;->access$200(Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl;)Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;

    move-result-object v2

    invoke-interface {v2, p1, p2, v0, p3}, Lcom/alipay/mobile/common/ipc/api/IPCRetryHandler;->retryIPCCall(Ljava/lang/reflect/Method;[Ljava/lang/Object;Lcom/alipay/mobile/common/ipc/api/IPCException;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    throw v0

    .line 120
    :cond_6
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne v1, v2, :cond_7

    .line 121
    const/4 v0, 0x0

    .line 124
    :goto_2
    return-object v0

    :cond_7
    iget-object v0, v0, Lcom/alipay/mobile/common/ipc/api/aidl/IPCResult;->resultValue:[B

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/ipc/biz/util/ObjSerializUtil;->deserializ([BLjava/lang/ClassLoader;)Ljava/io/Serializable;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0}, Lcom/alipay/mobile/common/ipc/biz/IPCCallManagerImpl$IPCCallProxyHandler;->doInvoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
