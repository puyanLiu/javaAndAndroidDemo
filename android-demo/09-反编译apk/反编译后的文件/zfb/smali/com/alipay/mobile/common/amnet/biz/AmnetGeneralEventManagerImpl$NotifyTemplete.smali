.class abstract Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;
.super Ljava/lang/Object;
.source "AmnetGeneralEventManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;


# direct methods
.method private constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)V
    .locals 0

    .prologue
    .line 245
    iput-object p1, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$1;)V
    .locals 0

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;-><init>(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)V

    return-void
.end method


# virtual methods
.method public abstract doNotify(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
.end method

.method public execute()V
    .locals 5

    .prologue
    .line 248
    iget-object v0, p0, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->this$0:Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;

    invoke-static {v0}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;->access$100(Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl;)[Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    array-length v0, v1

    if-nez v0, :cond_1

    .line 261
    :cond_0
    return-void

    .line 254
    :cond_1
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 256
    :try_start_0
    invoke-virtual {p0, v3}, Lcom/alipay/mobile/common/amnet/biz/AmnetGeneralEventManagerImpl$NotifyTemplete;->doNotify(Lcom/alipay/mobile/common/amnet/api/AmnetGeneralListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 257
    :catch_0
    move-exception v3

    .line 258
    const-string/jumbo v4, "amnet_AmnetGeneralEventManager"

    invoke-static {v4, v3}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method
