.class public final enum Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;
.super Ljava/lang/Enum;
.source "AppStatusUtils.java"


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

.field public static final enum SCREEN_OFF:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

.field public static final enum SCREEN_ON:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 34
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    const-string/jumbo v1, "SCREEN_ON"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->SCREEN_ON:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    .line 35
    new-instance v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    const-string/jumbo v1, "SCREEN_OFF"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->SCREEN_OFF:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    .line 33
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->SCREEN_ON:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->SCREEN_OFF:Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;->ENUM$VALUES:[Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/rome/syncsdk/util/AppStatusUtils$ScreenStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
