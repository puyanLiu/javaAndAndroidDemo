.class public final enum Lanetwork/channel/ssl/constant/SslMode;
.super Ljava/lang/Enum;
.source "SslMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lanetwork/channel/ssl/constant/SslMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lanetwork/channel/ssl/constant/SslMode;

.field public static final enum SSL_0_RTT:Lanetwork/channel/ssl/constant/SslMode;

.field public static final enum SSL_NOT_ENCRYPT:Lanetwork/channel/ssl/constant/SslMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 20
    new-instance v0, Lanetwork/channel/ssl/constant/SslMode;

    const-string/jumbo v1, "SSL_NOT_ENCRYPT"

    invoke-direct {v0, v1, v2, v2}, Lanetwork/channel/ssl/constant/SslMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_NOT_ENCRYPT:Lanetwork/channel/ssl/constant/SslMode;

    .line 25
    new-instance v0, Lanetwork/channel/ssl/constant/SslMode;

    const-string/jumbo v1, "SSL_0_RTT"

    invoke-direct {v0, v1, v3, v3}, Lanetwork/channel/ssl/constant/SslMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lanetwork/channel/ssl/constant/SslMode;->SSL_0_RTT:Lanetwork/channel/ssl/constant/SslMode;

    .line 16
    const/4 v0, 0x2

    new-array v0, v0, [Lanetwork/channel/ssl/constant/SslMode;

    sget-object v1, Lanetwork/channel/ssl/constant/SslMode;->SSL_NOT_ENCRYPT:Lanetwork/channel/ssl/constant/SslMode;

    aput-object v1, v0, v2

    sget-object v1, Lanetwork/channel/ssl/constant/SslMode;->SSL_0_RTT:Lanetwork/channel/ssl/constant/SslMode;

    aput-object v1, v0, v3

    sput-object v0, Lanetwork/channel/ssl/constant/SslMode;->$VALUES:[Lanetwork/channel/ssl/constant/SslMode;

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
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 30
    iput p3, p0, Lanetwork/channel/ssl/constant/SslMode;->value:I

    .line 31
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lanetwork/channel/ssl/constant/SslMode;
    .locals 1

    .prologue
    .line 16
    const-class v0, Lanetwork/channel/ssl/constant/SslMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lanetwork/channel/ssl/constant/SslMode;

    return-object v0
.end method

.method public static values()[Lanetwork/channel/ssl/constant/SslMode;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lanetwork/channel/ssl/constant/SslMode;->$VALUES:[Lanetwork/channel/ssl/constant/SslMode;

    invoke-virtual {v0}, [Lanetwork/channel/ssl/constant/SslMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lanetwork/channel/ssl/constant/SslMode;

    return-object v0
.end method


# virtual methods
.method public final intValue()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lanetwork/channel/ssl/constant/SslMode;->value:I

    return v0
.end method
