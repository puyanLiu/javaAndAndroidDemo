.class public final enum Lcom/spdu/httpdns/NetworkType;
.super Ljava/lang/Enum;
.source "NetworkType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spdu/httpdns/NetworkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spdu/httpdns/NetworkType;

.field public static final enum HTTPDNS_CONNECTNOTYPE:Lcom/spdu/httpdns/NetworkType;

.field public static final enum HTTPDNS_MOBILE:Lcom/spdu/httpdns/NetworkType;

.field public static final enum HTTPDNS_NOTCONNECT:Lcom/spdu/httpdns/NetworkType;

.field public static final enum HTTPDNS_WIFI:Lcom/spdu/httpdns/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/spdu/httpdns/NetworkType;

    const-string/jumbo v1, "HTTPDNS_NOTCONNECT"

    invoke-direct {v0, v1, v2}, Lcom/spdu/httpdns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_NOTCONNECT:Lcom/spdu/httpdns/NetworkType;

    .line 5
    new-instance v0, Lcom/spdu/httpdns/NetworkType;

    const-string/jumbo v1, "HTTPDNS_WIFI"

    invoke-direct {v0, v1, v3}, Lcom/spdu/httpdns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_WIFI:Lcom/spdu/httpdns/NetworkType;

    .line 6
    new-instance v0, Lcom/spdu/httpdns/NetworkType;

    const-string/jumbo v1, "HTTPDNS_MOBILE"

    invoke-direct {v0, v1, v4}, Lcom/spdu/httpdns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_MOBILE:Lcom/spdu/httpdns/NetworkType;

    .line 7
    new-instance v0, Lcom/spdu/httpdns/NetworkType;

    const-string/jumbo v1, "HTTPDNS_CONNECTNOTYPE"

    invoke-direct {v0, v1, v5}, Lcom/spdu/httpdns/NetworkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_CONNECTNOTYPE:Lcom/spdu/httpdns/NetworkType;

    .line 3
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/spdu/httpdns/NetworkType;

    sget-object v1, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_NOTCONNECT:Lcom/spdu/httpdns/NetworkType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_WIFI:Lcom/spdu/httpdns/NetworkType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_MOBILE:Lcom/spdu/httpdns/NetworkType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spdu/httpdns/NetworkType;->HTTPDNS_CONNECTNOTYPE:Lcom/spdu/httpdns/NetworkType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/spdu/httpdns/NetworkType;->$VALUES:[Lcom/spdu/httpdns/NetworkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spdu/httpdns/NetworkType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/spdu/httpdns/NetworkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spdu/httpdns/NetworkType;

    return-object v0
.end method

.method public static values()[Lcom/spdu/httpdns/NetworkType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/spdu/httpdns/NetworkType;->$VALUES:[Lcom/spdu/httpdns/NetworkType;

    invoke-virtual {v0}, [Lcom/spdu/httpdns/NetworkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spdu/httpdns/NetworkType;

    return-object v0
.end method
