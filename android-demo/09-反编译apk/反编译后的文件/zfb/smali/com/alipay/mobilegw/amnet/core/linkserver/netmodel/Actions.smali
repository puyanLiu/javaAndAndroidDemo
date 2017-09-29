.class public final enum Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;
.super Ljava/lang/Enum;
.source "Actions.java"

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum BACKGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum BACK_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum FOREGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum FORE_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum RECONN_AFTER_TIME:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum SESSION_NEED_REACTIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum USERLOGIN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum USERLOGOUT:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

.field public static final enum WAIT_CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "BACKGROUND"

    invoke-direct {v0, v1, v4, v4}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACKGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 13
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "FOREGROUND"

    invoke-direct {v0, v1, v5, v5}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->FOREGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 17
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "USERLOGIN"

    invoke-direct {v0, v1, v6, v6}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->USERLOGIN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 21
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "USERLOGOUT"

    invoke-direct {v0, v1, v7, v7}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->USERLOGOUT:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 25
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "CLOSE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v8}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 29
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "WAIT_CLOSE"

    const/4 v2, 0x5

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->WAIT_CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 33
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "BACK_ALIVE"

    const/4 v2, 0x6

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACK_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 37
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "FORE_ALIVE"

    const/4 v2, 0x7

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->FORE_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 41
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "RECONN_AFTER_TIME"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v8, v2}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->RECONN_AFTER_TIME:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 45
    new-instance v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    const-string/jumbo v1, "SESSION_NEED_REACTIVE"

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->SESSION_NEED_REACTIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    .line 7
    const/16 v0, 0xa

    new-array v0, v0, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACKGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->FOREGROUND:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->USERLOGIN:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->USERLOGOUT:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v1, v0, v7

    const/4 v1, 0x4

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->WAIT_CLOSE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->BACK_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->FORE_ALIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v2, v0, v1

    sget-object v1, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->RECONN_AFTER_TIME:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v1, v0, v8

    const/16 v1, 0x9

    sget-object v2, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->SESSION_NEED_REACTIVE:Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    aput-object v2, v0, v1

    sput-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->$VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 49
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 50
    iput p3, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->value:I

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->$VALUES:[Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    invoke-virtual {v0}, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/alipay/mobilegw/amnet/core/linkserver/netmodel/Actions;->value:I

    return v0
.end method
