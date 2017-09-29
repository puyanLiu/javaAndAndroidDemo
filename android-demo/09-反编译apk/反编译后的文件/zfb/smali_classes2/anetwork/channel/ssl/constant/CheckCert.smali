.class public final enum Lanetwork/channel/ssl/constant/CheckCert;
.super Ljava/lang/Enum;
.source "CheckCert.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanetwork/channel/ssl/constant/CheckCert;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanetwork/channel/ssl/constant/CheckCert;

.field public static final enum NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

.field public static final enum USEABLE:Lanetwork/channel/ssl/constant/CheckCert;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lanetwork/channel/ssl/constant/CheckCert;

    const-string/jumbo v1, "USEABLE"

    invoke-direct {v0, v1, v3, v3}, Lanetwork/channel/ssl/constant/CheckCert;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/ssl/constant/CheckCert;->USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    .line 26
    new-instance v0, Lanetwork/channel/ssl/constant/CheckCert;

    const-string/jumbo v1, "NOT_USEABLE"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v4, v2}, Lanetwork/channel/ssl/constant/CheckCert;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/ssl/constant/CheckCert;->NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lanetwork/channel/ssl/constant/CheckCert;

    sget-object v1, Lanetwork/channel/ssl/constant/CheckCert;->USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    aput-object v1, v0, v3

    sget-object v1, Lanetwork/channel/ssl/constant/CheckCert;->NOT_USEABLE:Lanetwork/channel/ssl/constant/CheckCert;

    aput-object v1, v0, v4

    sput-object v0, Lanetwork/channel/ssl/constant/CheckCert;->$VALUES:[Lanetwork/channel/ssl/constant/CheckCert;

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
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lanetwork/channel/ssl/constant/CheckCert;->value:I

    .line 32
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/ssl/constant/CheckCert;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lanetwork/channel/ssl/constant/CheckCert;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanetwork/channel/ssl/constant/CheckCert;

    return-object v0
.end method

.method public static values()[Lanetwork/channel/ssl/constant/CheckCert;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lanetwork/channel/ssl/constant/CheckCert;->$VALUES:[Lanetwork/channel/ssl/constant/CheckCert;

    invoke-virtual {v0}, [Lanetwork/channel/ssl/constant/CheckCert;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/ssl/constant/CheckCert;

    return-object v0
.end method


# virtual methods
.method public final intValue()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lanetwork/channel/ssl/constant/CheckCert;->value:I

    return v0
.end method
