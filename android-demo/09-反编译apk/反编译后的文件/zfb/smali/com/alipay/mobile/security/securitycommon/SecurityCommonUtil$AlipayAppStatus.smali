.class public final enum Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum Background:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

.field public static final enum Foreground:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

.field public static final enum Nopermission:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    const-string/jumbo v1, "Foreground"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->Foreground:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    const-string/jumbo v1, "Background"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->Background:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    new-instance v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    const-string/jumbo v1, "Nopermission"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->Nopermission:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    sget-object v1, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->Foreground:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->Background:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->Nopermission:Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->ENUM$VALUES:[Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;
    .locals 1

    const-class v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;->ENUM$VALUES:[Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/security/securitycommon/SecurityCommonUtil$AlipayAppStatus;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
