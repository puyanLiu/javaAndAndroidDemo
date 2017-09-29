.class public final enum Lcom/spdu/httpdns/MessageType;
.super Ljava/lang/Enum;
.source "MessageType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spdu/httpdns/MessageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/spdu/httpdns/MessageType;

.field public static final enum DNSFAIL:Lcom/spdu/httpdns/MessageType;

.field public static final enum DNSNONE:Lcom/spdu/httpdns/MessageType;

.field public static final enum DNSTIME:Lcom/spdu/httpdns/MessageType;

.field public static final enum IPERROR:Lcom/spdu/httpdns/MessageType;

.field public static final enum RESLOVERROR:Lcom/spdu/httpdns/MessageType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/spdu/httpdns/MessageType;

    const-string/jumbo v1, "DNSFAIL"

    invoke-direct {v0, v1, v2}, Lcom/spdu/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/MessageType;->DNSFAIL:Lcom/spdu/httpdns/MessageType;

    .line 5
    new-instance v0, Lcom/spdu/httpdns/MessageType;

    const-string/jumbo v1, "DNSTIME"

    invoke-direct {v0, v1, v3}, Lcom/spdu/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/MessageType;->DNSTIME:Lcom/spdu/httpdns/MessageType;

    .line 6
    new-instance v0, Lcom/spdu/httpdns/MessageType;

    const-string/jumbo v1, "IPERROR"

    invoke-direct {v0, v1, v4}, Lcom/spdu/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/MessageType;->IPERROR:Lcom/spdu/httpdns/MessageType;

    .line 7
    new-instance v0, Lcom/spdu/httpdns/MessageType;

    const-string/jumbo v1, "RESLOVERROR"

    invoke-direct {v0, v1, v5}, Lcom/spdu/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/MessageType;->RESLOVERROR:Lcom/spdu/httpdns/MessageType;

    .line 8
    new-instance v0, Lcom/spdu/httpdns/MessageType;

    const-string/jumbo v1, "DNSNONE"

    invoke-direct {v0, v1, v6}, Lcom/spdu/httpdns/MessageType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spdu/httpdns/MessageType;->DNSNONE:Lcom/spdu/httpdns/MessageType;

    .line 3
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/spdu/httpdns/MessageType;

    sget-object v1, Lcom/spdu/httpdns/MessageType;->DNSFAIL:Lcom/spdu/httpdns/MessageType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spdu/httpdns/MessageType;->DNSTIME:Lcom/spdu/httpdns/MessageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/spdu/httpdns/MessageType;->IPERROR:Lcom/spdu/httpdns/MessageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/spdu/httpdns/MessageType;->RESLOVERROR:Lcom/spdu/httpdns/MessageType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/spdu/httpdns/MessageType;->DNSNONE:Lcom/spdu/httpdns/MessageType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/spdu/httpdns/MessageType;->$VALUES:[Lcom/spdu/httpdns/MessageType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/spdu/httpdns/MessageType;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/spdu/httpdns/MessageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spdu/httpdns/MessageType;

    return-object v0
.end method

.method public static values()[Lcom/spdu/httpdns/MessageType;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/spdu/httpdns/MessageType;->$VALUES:[Lcom/spdu/httpdns/MessageType;

    invoke-virtual {v0}, [Lcom/spdu/httpdns/MessageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spdu/httpdns/MessageType;

    return-object v0
.end method
