.class public final enum Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;
.super Ljava/lang/Enum;
.source "EmotionConstants.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

.field public static final enum DEL:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

.field public static final enum MODIFY:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

.field public static final enum REFRESH:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 147
    new-instance v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    const-string/jumbo v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->ADD:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    new-instance v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    const-string/jumbo v1, "MODIFY"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->MODIFY:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    new-instance v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    const-string/jumbo v1, "DEL"

    invoke-direct {v0, v1, v4}, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->DEL:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    new-instance v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    const-string/jumbo v1, "REFRESH"

    invoke-direct {v0, v1, v5}, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->REFRESH:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    .line 146
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->ADD:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->MODIFY:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->DEL:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->REFRESH:Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/emotion/util/EmotionConstants$ChangeType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
