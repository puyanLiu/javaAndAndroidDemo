.class public final enum Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;
.super Ljava/lang/Enum;
.source "GattPeripheral.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

.field public static final enum CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

.field public static final enum CONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

.field public static final enum DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

.field public static final enum DISCONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 448
    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    const-string/jumbo v1, "CONNECTED"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    const-string/jumbo v1, "CONNECTING"

    invoke-direct {v0, v1, v3, v3}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    const-string/jumbo v1, "DISCONNECTED"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    new-instance v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    const-string/jumbo v1, "DISCONNECTING"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    .line 447
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    sget-object v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->CONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTED:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->DISCONNECTING:Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->$VALUES:[Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .prologue
    .line 450
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 451
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;
    .locals 1

    .prologue
    .line 447
    const-class v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    return-object v0
.end method

.method public static values()[Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;
    .locals 1

    .prologue
    .line 447
    sget-object v0, Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->$VALUES:[Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    invoke-virtual {v0}, [Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/security/mobile/module/bracelet/lib/core/GattPeripheral$STATE;

    return-object v0
.end method
