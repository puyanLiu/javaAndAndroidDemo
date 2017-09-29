.class Lcom/fido/android/framework/agent/Fido$Connection;
.super Ljava/lang/Object;
.source "Fido.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFidoService:Lcom/fido/android/framework/service/IFidoService;

.field private mServiceConnection:Landroid/content/ServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object v2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    .line 169
    iput-object v2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 170
    iput-object v2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    .line 182
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 183
    :cond_0
    new-instance v0, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string/jumbo v1, "Invalid parameter exception"

    invoke-direct {v0, v1, v2}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v0

    .line 186
    :cond_1
    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    .line 189
    iput-object v2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    .line 190
    new-instance v0, Lcom/fido/android/framework/agent/Fido$Connection$1;

    invoke-direct {v0, p0, p2}, Lcom/fido/android/framework/agent/Fido$Connection$1;-><init>(Lcom/fido/android/framework/agent/Fido$Connection;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 206
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lcom/fido/android/framework/agent/Fido$1;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0, p1, p2}, Lcom/fido/android/framework/agent/Fido$Connection;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/fido/android/framework/agent/Fido$Connection;)Lcom/fido/android/framework/service/IFidoService;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    return-object v0
.end method

.method static synthetic access$102(Lcom/fido/android/framework/agent/Fido$Connection;Lcom/fido/android/framework/service/IFidoService;)Lcom/fido/android/framework/service/IFidoService;
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    return-object p1
.end method

.method static synthetic access$600(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/fido/android/framework/agent/Fido$Connection;->bindService(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/fido/android/framework/agent/Fido$Connection;)V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lcom/fido/android/framework/agent/Fido$Connection;->unbindService()V

    return-void
.end method

.method static synthetic access$900(Lcom/fido/android/framework/agent/Fido$Connection;Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0, p1}, Lcom/fido/android/framework/agent/Fido$Connection;->sendXmlCommand(Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v0

    return-object v0
.end method

.method private bindService(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 217
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/fido/android/framework/service/IFidoService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 218
    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    return v0
.end method

.method private sendXmlCommand(Ljava/util/List;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 248
    :try_start_0
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    invoke-interface {v0, p1}, Lcom/fido/android/framework/service/IFidoService;->processXmlCommand(Ljava/util/List;)I

    move-result v2

    .line 251
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_0

    .line 252
    const/4 v0, 0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 255
    :goto_0
    invoke-direct {p0, v2, v0}, Lcom/fido/android/framework/agent/Fido$Connection;->validate(ILjava/lang/String;)Lcom/fido/android/framework/agent/api/ResultType;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 258
    :catch_0
    move-exception v0

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$200()Lcom/fido/android/framework/agent/Fido;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    .line 259
    new-instance v0, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string/jumbo v2, "Remote exception"

    invoke-direct {v0, v2, v1}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v0

    .line 262
    :catch_1
    move-exception v0

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$200()Lcom/fido/android/framework/agent/Fido;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fido/android/framework/agent/Fido;->uninit()V

    .line 263
    new-instance v0, Lcom/fido/android/framework/agent/Fido$ServiceException;

    const-string/jumbo v2, "Null pointer exception"

    invoke-direct {v0, v2, v1}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method

.method private unbindService()V
    .locals 2

    .prologue
    .line 230
    :try_start_0
    iget-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fido/android/framework/agent/Fido$Connection;->mFidoService:Lcom/fido/android/framework/service/IFidoService;

    .line 235
    return-void

    .line 231
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0
.end method

.method private validate(ILjava/lang/String;)Lcom/fido/android/framework/agent/api/ResultType;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 282
    if-eqz p2, :cond_0

    move-object v0, p2

    .line 285
    :goto_0
    if-ltz p1, :cond_1

    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$300()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    array-length v1, v1

    if-ge p1, v1, :cond_1

    .line 286
    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$300()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    aget-object v1, v1, p1

    .line 289
    if-nez p2, :cond_3

    .line 290
    new-instance v1, Lcom/fido/android/framework/agent/Fido$ServiceException;

    invoke-direct {v1, v0, v2}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v1

    .line 282
    :cond_0
    const-string/jumbo v0, "Validate string is null"

    goto :goto_0

    .line 293
    :cond_1
    invoke-static {}, Lcom/fido/android/framework/agent/Fido;->access$300()[Lcom/fido/android/framework/agent/api/ResultType;

    move-result-object v1

    array-length v1, v1

    if-ne p1, v1, :cond_2

    .line 294
    new-instance v1, Lcom/fido/android/framework/agent/Fido$RequestException;

    invoke-direct {v1, v0, v2}, Lcom/fido/android/framework/agent/Fido$RequestException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v1

    .line 297
    :cond_2
    new-instance v1, Lcom/fido/android/framework/agent/Fido$ServiceException;

    invoke-direct {v1, v0, v2}, Lcom/fido/android/framework/agent/Fido$ServiceException;-><init>(Ljava/lang/String;Lcom/fido/android/framework/agent/Fido$1;)V

    throw v1

    .line 301
    :cond_3
    return-object v1
.end method
