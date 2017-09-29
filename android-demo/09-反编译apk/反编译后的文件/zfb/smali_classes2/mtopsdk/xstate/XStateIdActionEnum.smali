.class public final enum Lmtopsdk/xstate/XStateIdActionEnum;
.super Ljava/lang/Enum;
.source "XStateIdActionEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/xstate/XStateIdActionEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/xstate/XStateIdActionEnum;

.field public static final enum NETTYPE:Lmtopsdk/xstate/XStateIdActionEnum;

.field public static final enum NQ:Lmtopsdk/xstate/XStateIdActionEnum;


# instance fields
.field private action:Ljava/lang/String;

.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 16
    new-instance v0, Lmtopsdk/xstate/XStateIdActionEnum;

    const-string/jumbo v1, "NQ"

    const-string/jumbo v2, "com.taobao.mtopsdk.xstate.nq"

    const-string/jumbo v3, "nq"

    invoke-direct {v0, v1, v4, v2, v3}, Lmtopsdk/xstate/XStateIdActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/XStateIdActionEnum;->NQ:Lmtopsdk/xstate/XStateIdActionEnum;

    .line 17
    new-instance v0, Lmtopsdk/xstate/XStateIdActionEnum;

    const-string/jumbo v1, "NETTYPE"

    const-string/jumbo v2, "com.taobao.mtopsdk.xstate.netType"

    const-string/jumbo v3, "netType"

    invoke-direct {v0, v1, v5, v2, v3}, Lmtopsdk/xstate/XStateIdActionEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/xstate/XStateIdActionEnum;->NETTYPE:Lmtopsdk/xstate/XStateIdActionEnum;

    .line 5
    const/4 v0, 0x2

    new-array v0, v0, [Lmtopsdk/xstate/XStateIdActionEnum;

    sget-object v1, Lmtopsdk/xstate/XStateIdActionEnum;->NQ:Lmtopsdk/xstate/XStateIdActionEnum;

    aput-object v1, v0, v4

    sget-object v1, Lmtopsdk/xstate/XStateIdActionEnum;->NETTYPE:Lmtopsdk/xstate/XStateIdActionEnum;

    aput-object v1, v0, v5

    sput-object v0, Lmtopsdk/xstate/XStateIdActionEnum;->$VALUES:[Lmtopsdk/xstate/XStateIdActionEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput-object p3, p0, Lmtopsdk/xstate/XStateIdActionEnum;->action:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lmtopsdk/xstate/XStateIdActionEnum;->key:Ljava/lang/String;

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/xstate/XStateIdActionEnum;
    .locals 1

    .prologue
    .line 5
    const-class v0, Lmtopsdk/xstate/XStateIdActionEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/xstate/XStateIdActionEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/xstate/XStateIdActionEnum;
    .locals 1

    .prologue
    .line 5
    sget-object v0, Lmtopsdk/xstate/XStateIdActionEnum;->$VALUES:[Lmtopsdk/xstate/XStateIdActionEnum;

    invoke-virtual {v0}, [Lmtopsdk/xstate/XStateIdActionEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/xstate/XStateIdActionEnum;

    return-object v0
.end method


# virtual methods
.method public final getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lmtopsdk/xstate/XStateIdActionEnum;->action:Ljava/lang/String;

    return-object v0
.end method

.method public final getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lmtopsdk/xstate/XStateIdActionEnum;->key:Ljava/lang/String;

    return-object v0
.end method

.method public final setAction(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    iput-object p1, p0, Lmtopsdk/xstate/XStateIdActionEnum;->action:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public final setKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lmtopsdk/xstate/XStateIdActionEnum;->key:Ljava/lang/String;

    .line 41
    return-void
.end method
