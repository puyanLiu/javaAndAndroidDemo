.class public final enum Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;
.super Ljava/lang/Enum;
.source "ResultUtils.java"


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

.field public static final enum FAILED:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

.field public static final enum SUCCESS:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

.field public static final enum UPDATE:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 52
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->SUCCESS:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    .line 57
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    const-string/jumbo v1, "FAILED"

    invoke-direct {v0, v1, v3}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->FAILED:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    .line 62
    new-instance v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    const-string/jumbo v1, "UPDATE"

    invoke-direct {v0, v1, v4}, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->UPDATE:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    .line 47
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    sget-object v1, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->SUCCESS:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->FAILED:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->UPDATE:Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    aput-object v1, v0, v4

    sput-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->$VALUES:[Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;
    .locals 1

    .prologue
    .line 47
    const-class v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    return-object v0
.end method

.method public static values()[Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->$VALUES:[Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    invoke-virtual {v0}, [Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/security/mobile/fingerprint/samsung/ResultUtils$Status;

    return-object v0
.end method
