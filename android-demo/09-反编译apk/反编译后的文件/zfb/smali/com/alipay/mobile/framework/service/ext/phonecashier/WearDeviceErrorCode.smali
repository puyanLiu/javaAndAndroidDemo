.class public final enum Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;
.super Ljava/lang/Enum;
.source "WearDeviceErrorCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DATA_FORMAT_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

.field public static final enum FORCE_QUIT:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

.field public static final enum NET_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

.field public static final enum QUICK_TOP:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

.field public static final enum SYS_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

.field private static final synthetic b:[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;


# instance fields
.field private final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 10
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    const-string/jumbo v1, "NET_ERROR"

    const-string/jumbo v2, "\u7f51\u7edc\u5f02\u5e38"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->NET_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    .line 12
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    const-string/jumbo v1, "DATA_FORMAT_ERROR"

    const-string/jumbo v2, "\u6570\u636e\u683c\u5f0f\u5f02\u5e38"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->DATA_FORMAT_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    .line 14
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    const-string/jumbo v1, "QUICK_TOP"

    const-string/jumbo v2, "\u5feb\u6377\u5728\u6700\u9876\u5c42\uff0c\u64cd\u4f5c\u53d6\u6d88"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->QUICK_TOP:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    .line 16
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    const-string/jumbo v1, "FORCE_QUIT"

    const-string/jumbo v2, "\u5f3a\u5236\u9000\u51fa"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->FORCE_QUIT:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    .line 18
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    const-string/jumbo v1, "SYS_ERROR"

    const-string/jumbo v2, "\u7cfb\u7edf\u5f02\u5e38"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->SYS_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    .line 9
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->NET_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->DATA_FORMAT_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->QUICK_TOP:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->FORCE_QUIT:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->SYS_ERROR:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->b:[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput-object p3, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->a:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->b:[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceErrorCode;->a:Ljava/lang/String;

    return-object v0
.end method
