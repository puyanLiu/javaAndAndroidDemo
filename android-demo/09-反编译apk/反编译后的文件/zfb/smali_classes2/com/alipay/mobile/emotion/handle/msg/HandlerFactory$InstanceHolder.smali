.class Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory$InstanceHolder;
.super Ljava/lang/Object;
.source "HandlerFactory.java"


# static fields
.field private static final INSTANCE:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 8
    new-instance v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;-><init>(Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;)V

    sput-object v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory$InstanceHolder;->INSTANCE:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    .line 7
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$0()Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory$InstanceHolder;->INSTANCE:Lcom/alipay/mobile/emotion/handle/msg/HandlerFactory;

    return-object v0
.end method
