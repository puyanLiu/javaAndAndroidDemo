.class public final enum Lorg/android/spdy/SpdyStatusCode;
.super Ljava/lang/Enum;
.source "SpdyStatusCode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/android/spdy/SpdyStatusCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_CANCEL:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_FLOW_CONTROL_ERROR:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_FRAME_TOO_LARGE:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_INTERNAL_ERROR:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_INVALID_CREDENTIALS:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_INVALID_STREAM:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_OK:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_PROTOCOL_ERROR:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_REFUSED_STREAM:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_STREAM_ALREADY_CLOSED:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_STREAM_IN_USE:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_STREAM_REQUESTCANCELLED:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_STREAM_TIMEOUT:Lorg/android/spdy/SpdyStatusCode;

.field public static final enum SPDY_UNSUPPORTED_VERSION:Lorg/android/spdy/SpdyStatusCode;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 5
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_OK"

    invoke-direct {v0, v1, v4, v4}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_OK:Lorg/android/spdy/SpdyStatusCode;

    .line 9
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_PROTOCOL_ERROR"

    invoke-direct {v0, v1, v5, v5}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_PROTOCOL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    .line 13
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_INVALID_STREAM"

    invoke-direct {v0, v1, v6, v6}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_INVALID_STREAM:Lorg/android/spdy/SpdyStatusCode;

    .line 17
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_REFUSED_STREAM"

    invoke-direct {v0, v1, v7, v7}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_REFUSED_STREAM:Lorg/android/spdy/SpdyStatusCode;

    .line 21
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_UNSUPPORTED_VERSION"

    invoke-direct {v0, v1, v8, v8}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_UNSUPPORTED_VERSION:Lorg/android/spdy/SpdyStatusCode;

    .line 25
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_CANCEL"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_CANCEL:Lorg/android/spdy/SpdyStatusCode;

    .line 29
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_INTERNAL_ERROR"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_INTERNAL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    .line 33
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_FLOW_CONTROL_ERROR"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_FLOW_CONTROL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    .line 38
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_STREAM_IN_USE"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_IN_USE:Lorg/android/spdy/SpdyStatusCode;

    .line 42
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_STREAM_ALREADY_CLOSED"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_ALREADY_CLOSED:Lorg/android/spdy/SpdyStatusCode;

    .line 46
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_INVALID_CREDENTIALS"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_INVALID_CREDENTIALS:Lorg/android/spdy/SpdyStatusCode;

    .line 50
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_FRAME_TOO_LARGE"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_FRAME_TOO_LARGE:Lorg/android/spdy/SpdyStatusCode;

    .line 51
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_STREAM_TIMEOUT"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_TIMEOUT:Lorg/android/spdy/SpdyStatusCode;

    .line 52
    new-instance v0, Lorg/android/spdy/SpdyStatusCode;

    const-string/jumbo v1, "SPDY_STREAM_REQUESTCANCELLED"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lorg/android/spdy/SpdyStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_REQUESTCANCELLED:Lorg/android/spdy/SpdyStatusCode;

    .line 3
    const/16 v0, 0xe

    new-array v0, v0, [Lorg/android/spdy/SpdyStatusCode;

    sget-object v1, Lorg/android/spdy/SpdyStatusCode;->SPDY_OK:Lorg/android/spdy/SpdyStatusCode;

    aput-object v1, v0, v4

    sget-object v1, Lorg/android/spdy/SpdyStatusCode;->SPDY_PROTOCOL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    aput-object v1, v0, v5

    sget-object v1, Lorg/android/spdy/SpdyStatusCode;->SPDY_INVALID_STREAM:Lorg/android/spdy/SpdyStatusCode;

    aput-object v1, v0, v6

    sget-object v1, Lorg/android/spdy/SpdyStatusCode;->SPDY_REFUSED_STREAM:Lorg/android/spdy/SpdyStatusCode;

    aput-object v1, v0, v7

    sget-object v1, Lorg/android/spdy/SpdyStatusCode;->SPDY_UNSUPPORTED_VERSION:Lorg/android/spdy/SpdyStatusCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_CANCEL:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_INTERNAL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_FLOW_CONTROL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_IN_USE:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_ALREADY_CLOSED:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_INVALID_CREDENTIALS:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_FRAME_TOO_LARGE:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_TIMEOUT:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_REQUESTCANCELLED:Lorg/android/spdy/SpdyStatusCode;

    aput-object v2, v0, v1

    sput-object v0, Lorg/android/spdy/SpdyStatusCode;->$VALUES:[Lorg/android/spdy/SpdyStatusCode;

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
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 57
    iput p3, p0, Lorg/android/spdy/SpdyStatusCode;->code:I

    .line 58
    return-void
.end method

.method static getvalue(I)Lorg/android/spdy/SpdyStatusCode;
    .locals 1

    .prologue
    .line 66
    sparse-switch p0, :sswitch_data_0

    .line 96
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 68
    :sswitch_0
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_OK:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 70
    :sswitch_1
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_PROTOCOL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 72
    :sswitch_2
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_INVALID_STREAM:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 74
    :sswitch_3
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_REFUSED_STREAM:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 76
    :sswitch_4
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_UNSUPPORTED_VERSION:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 78
    :sswitch_5
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_REQUESTCANCELLED:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 80
    :sswitch_6
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_CANCEL:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 82
    :sswitch_7
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_INTERNAL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 84
    :sswitch_8
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_FLOW_CONTROL_ERROR:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 86
    :sswitch_9
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_IN_USE:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 88
    :sswitch_a
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_ALREADY_CLOSED:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 90
    :sswitch_b
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_INVALID_CREDENTIALS:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 92
    :sswitch_c
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_FRAME_TOO_LARGE:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 94
    :sswitch_d
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->SPDY_STREAM_TIMEOUT:Lorg/android/spdy/SpdyStatusCode;

    goto :goto_0

    .line 66
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e4 -> :sswitch_c
        -0x7e3 -> :sswitch_b
        -0x7e2 -> :sswitch_a
        -0x7e1 -> :sswitch_9
        -0x7e0 -> :sswitch_8
        -0x7df -> :sswitch_7
        -0x7de -> :sswitch_6
        -0x7dd -> :sswitch_4
        -0x7dc -> :sswitch_3
        -0x7db -> :sswitch_2
        -0x7da -> :sswitch_1
        -0x7d5 -> :sswitch_5
        -0x7d4 -> :sswitch_d
        0x0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/android/spdy/SpdyStatusCode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lorg/android/spdy/SpdyStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/android/spdy/SpdyStatusCode;

    return-object v0
.end method

.method public static values()[Lorg/android/spdy/SpdyStatusCode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lorg/android/spdy/SpdyStatusCode;->$VALUES:[Lorg/android/spdy/SpdyStatusCode;

    invoke-virtual {v0}, [Lorg/android/spdy/SpdyStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/android/spdy/SpdyStatusCode;

    return-object v0
.end method


# virtual methods
.method final getint()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lorg/android/spdy/SpdyStatusCode;->code:I

    return v0
.end method
