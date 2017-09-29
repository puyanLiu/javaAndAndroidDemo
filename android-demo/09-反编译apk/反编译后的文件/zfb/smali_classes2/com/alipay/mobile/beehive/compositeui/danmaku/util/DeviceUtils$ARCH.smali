.class public final enum Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
.super Ljava/lang/Enum;
.source "DeviceUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ARM:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

.field public static final enum ARM64:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

.field public static final enum MIPS:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

.field public static final enum Unknown:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

.field public static final enum X86:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 24
    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    const-string/jumbo v1, "Unknown"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->Unknown:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    const-string/jumbo v1, "ARM"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ARM:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    const-string/jumbo v1, "X86"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->X86:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    const-string/jumbo v1, "MIPS"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->MIPS:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    new-instance v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    const-string/jumbo v1, "ARM64"

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ARM64:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    .line 23
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->Unknown:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ARM:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->X86:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->MIPS:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ARM64:Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    aput-object v1, v0, v6

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;->ENUM$VALUES:[Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/beehive/compositeui/danmaku/util/DeviceUtils$ARCH;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
