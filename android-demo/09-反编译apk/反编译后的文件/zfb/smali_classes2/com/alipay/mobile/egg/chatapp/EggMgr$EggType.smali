.class public final enum Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;
.super Ljava/lang/Enum;
.source "EggMgr.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BIZ:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

.field public static final enum CONTENT:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 40
    new-instance v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    const-string/jumbo v1, "CONTENT"

    invoke-direct {v0, v1, v2}, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->CONTENT:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    new-instance v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    const-string/jumbo v1, "BIZ"

    invoke-direct {v0, v1, v3}, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->BIZ:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    .line 39
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    sget-object v1, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->CONTENT:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->BIZ:Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->ENUM$VALUES:[Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;->ENUM$VALUES:[Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/egg/chatapp/EggMgr$EggType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
