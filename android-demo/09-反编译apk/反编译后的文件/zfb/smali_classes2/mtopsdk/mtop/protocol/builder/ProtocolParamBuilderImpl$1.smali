.class synthetic Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl$1;
.super Ljava/lang/Object;
.source "ProtocolParamBuilderImpl.java"


# static fields
.field static final synthetic $SwitchMap$mtopsdk$mtop$domain$EntranceEnum:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    invoke-static {}, Lmtopsdk/mtop/domain/EntranceEnum;->values()[Lmtopsdk/mtop/domain/EntranceEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl$1;->$SwitchMap$mtopsdk$mtop$domain$EntranceEnum:[I

    :try_start_0
    sget-object v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl$1;->$SwitchMap$mtopsdk$mtop$domain$EntranceEnum:[I

    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->Api4:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EntranceEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl$1;->$SwitchMap$mtopsdk$mtop$domain$EntranceEnum:[I

    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->Partner:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EntranceEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v0, Lmtopsdk/mtop/protocol/builder/ProtocolParamBuilderImpl$1;->$SwitchMap$mtopsdk$mtop$domain$EntranceEnum:[I

    sget-object v1, Lmtopsdk/mtop/domain/EntranceEnum;->Spcode:Lmtopsdk/mtop/domain/EntranceEnum;

    invoke-virtual {v1}, Lmtopsdk/mtop/domain/EntranceEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    return-void

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_0
.end method
