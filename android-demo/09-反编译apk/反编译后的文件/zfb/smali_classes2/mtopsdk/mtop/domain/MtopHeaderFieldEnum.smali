.class public final enum Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
.super Ljava/lang/Enum;
.source "MtopHeaderFieldEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum APICONFIG_V:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum APITYPE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum APPKEY:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum DEVICEID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum EXT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum IMEI:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum IMSI:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum NETTYPE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum NQ:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum PV:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum SID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum SIGN:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum TIME:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

.field public static final enum TTID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;


# instance fields
.field private headField:Ljava/lang/String;

.field private xstateKey:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 8
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "SID"

    const-string/jumbo v2, "m-sid"

    const-string/jumbo v3, "sid"

    invoke-direct {v0, v1, v5, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 9
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "TIME"

    const-string/jumbo v2, "m-t"

    const-string/jumbo v3, "t"

    invoke-direct {v0, v1, v6, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TIME:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 10
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "APPKEY"

    const-string/jumbo v2, "m-appkey"

    const-string/jumbo v3, "appKey"

    invoke-direct {v0, v1, v7, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APPKEY:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 11
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "TTID"

    const-string/jumbo v2, "m-ttid"

    const-string/jumbo v3, "ttid"

    invoke-direct {v0, v1, v8, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TTID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 12
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "DEVICEID"

    const-string/jumbo v2, "m-devid"

    const-string/jumbo v3, "deviceId"

    invoke-direct {v0, v1, v9, v2, v3}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->DEVICEID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 13
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "SIGN"

    const/4 v2, 0x5

    const-string/jumbo v3, "m-sign"

    const-string/jumbo v4, "sign"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SIGN:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 14
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "NQ"

    const/4 v2, 0x6

    const-string/jumbo v3, "m-nq"

    const-string/jumbo v4, "nq"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->NQ:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 15
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "NETTYPE"

    const/4 v2, 0x7

    const-string/jumbo v3, "m-nettype"

    const-string/jumbo v4, "netType"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->NETTYPE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 16
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "PV"

    const/16 v2, 0x8

    const-string/jumbo v3, "m-pv"

    const-string/jumbo v4, "pv"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->PV:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 17
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "IMEI"

    const/16 v2, 0x9

    const-string/jumbo v3, "m-e"

    const-string/jumbo v4, "imei"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->IMEI:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 18
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "IMSI"

    const/16 v2, 0xa

    const-string/jumbo v3, "m-s"

    const-string/jumbo v4, "imsi"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->IMSI:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 19
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "APITYPE"

    const/16 v2, 0xb

    const-string/jumbo v3, "m-exttype"

    const-string/jumbo v4, "exttype"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APITYPE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 20
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "EXT"

    const/16 v2, 0xc

    const-string/jumbo v3, "m-extdata"

    const-string/jumbo v4, "extdata"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->EXT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 21
    new-instance v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    const-string/jumbo v1, "APICONFIG_V"

    const/16 v2, 0xd

    const-string/jumbo v3, "x-m-apiconfig-v"

    const-string/jumbo v4, "x-m-apiconfig-v"

    invoke-direct {v0, v1, v2, v3, v4}, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APICONFIG_V:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    .line 6
    const/16 v0, 0xe

    new-array v0, v0, [Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v5

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TIME:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v6

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APPKEY:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v7

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->TTID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v8

    sget-object v1, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->DEVICEID:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->SIGN:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->NQ:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->NETTYPE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->PV:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->IMEI:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->IMSI:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APITYPE:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->EXT:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->APICONFIG_V:Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    aput-object v2, v0, v1

    sput-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->$VALUES:[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

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
    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 27
    iput-object p3, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->headField:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->xstateKey:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->$VALUES:[Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;

    return-object v0
.end method


# virtual methods
.method public final getHeadField()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->headField:Ljava/lang/String;

    return-object v0
.end method

.method public final getXstateKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->xstateKey:Ljava/lang/String;

    return-object v0
.end method

.method public final setHeadField(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->headField:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public final setXstateKey(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lmtopsdk/mtop/domain/MtopHeaderFieldEnum;->xstateKey:Ljava/lang/String;

    .line 45
    return-void
.end method
