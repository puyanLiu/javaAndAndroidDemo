.class public final enum Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;
.super Ljava/lang/Enum;
.source "WearDeviceType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic a:[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

.field public static final enum bracelet:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

.field public static final enum finger:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

.field public static final enum watch:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    const-string/jumbo v1, "watch"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->watch:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    const-string/jumbo v1, "bracelet"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->bracelet:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    new-instance v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    const-string/jumbo v1, "finger"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->finger:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    .line 8
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->watch:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->bracelet:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->finger:Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->a:[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;->a:[Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/framework/service/ext/phonecashier/WearDeviceType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
