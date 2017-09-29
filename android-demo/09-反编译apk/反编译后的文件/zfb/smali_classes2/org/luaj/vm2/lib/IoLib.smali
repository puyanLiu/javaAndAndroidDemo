.class public abstract Lorg/luaj/vm2/lib/IoLib;
.super Lorg/luaj/vm2/lib/TwoArgFunction;


# static fields
.field public static final FILE_NAMES:[Ljava/lang/String;

.field protected static final FTYPE_NAMED:I = 0x3

.field protected static final FTYPE_STDERR:I = 0x2

.field protected static final FTYPE_STDIN:I = 0x0

.field protected static final FTYPE_STDOUT:I = 0x1

.field public static final IO_NAMES:[Ljava/lang/String;

.field static class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

.field private static final d:Lorg/luaj/vm2/LuaValue;

.field private static final e:Lorg/luaj/vm2/LuaValue;

.field private static final f:Lorg/luaj/vm2/LuaValue;

.field private static final g:Lorg/luaj/vm2/LuaValue;

.field private static final h:Lorg/luaj/vm2/LuaValue;


# instance fields
.field private a:Lorg/luaj/vm2/lib/IoLib$File;

.field private b:Lorg/luaj/vm2/lib/IoLib$File;

.field private c:Lorg/luaj/vm2/lib/IoLib$File;

.field filemethods:Lorg/luaj/vm2/LuaTable;

.field protected globals:Lorg/luaj/vm2/Globals;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string/jumbo v0, "stdin"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->d:Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v0, "stdout"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->e:Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v0, "stderr"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->f:Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v0, "file"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->g:Lorg/luaj/vm2/LuaValue;

    const-string/jumbo v0, "closed file"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->h:Lorg/luaj/vm2/LuaValue;

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "close"

    aput-object v1, v0, v3

    const-string/jumbo v1, "flush"

    aput-object v1, v0, v4

    const-string/jumbo v1, "input"

    aput-object v1, v0, v5

    const-string/jumbo v1, "lines"

    aput-object v1, v0, v6

    const-string/jumbo v1, "open"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "output"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "popen"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "read"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "tmpfile"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "write"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->IO_NAMES:[Ljava/lang/String;

    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "close"

    aput-object v1, v0, v3

    const-string/jumbo v1, "flush"

    aput-object v1, v0, v4

    const-string/jumbo v1, "lines"

    aput-object v1, v0, v5

    const-string/jumbo v1, "read"

    aput-object v1, v0, v6

    const-string/jumbo v1, "seek"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string/jumbo v2, "setvbuf"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "write"

    aput-object v2, v0, v1

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->FILE_NAMES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/TwoArgFunction;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->c:Lorg/luaj/vm2/lib/IoLib$File;

    return-void
.end method

.method private static a(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;
    .locals 2

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-static {p0}, Lorg/luaj/vm2/lib/IoLib;->valueOf(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->varargsOf(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->isstdfile()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "cannot close standard file"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->a(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->close()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    goto :goto_0
.end method

.method private static a(Lorg/luaj/vm2/lib/IoLib$File;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v1

    :goto_0
    if-gt v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->checkstring(I)Lorg/luaj/vm2/LuaString;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/luaj/vm2/lib/IoLib$File;->write(Lorg/luaj/vm2/LuaString;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method private a()Lorg/luaj/vm2/lib/IoLib$File;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    const-string/jumbo v1, "-"

    const-string/jumbo v2, "r"

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->a(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    goto :goto_0
.end method

.method private a(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;
    .locals 3

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lorg/luaj/vm2/lib/IoLib;->b(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "io error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;
    .locals 3

    invoke-static {p0}, Lorg/luaj/vm2/lib/IoLib;->b(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    const-string/jumbo v2, "file"

    invoke-static {v1, v2}, Lorg/luaj/vm2/lib/IoLib;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->c(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/lib/IoLib$File;

    return-object v0
.end method

.method private a(Lorg/luaj/vm2/LuaTable;)V
    .locals 4

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaTable;->keys()[Lorg/luaj/vm2/LuaValue;

    move-result-object v2

    const/4 v0, 0x0

    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaTable;->get(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    check-cast v0, Lorg/luaj/vm2/lib/IoLib$IoLibV;

    iput-object p0, v0, Lorg/luaj/vm2/lib/IoLib$IoLibV;->iolib:Lorg/luaj/vm2/lib/IoLib;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static a(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 2

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->peek()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-gez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->read()I

    if-eqz p2, :cond_0

    invoke-virtual {p2, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method

.method static access$000(Ljava/lang/Exception;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "io error: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->a(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/Varargs;
    .locals 3

    :try_start_0
    new-instance v0, Lorg/luaj/vm2/lib/IoLib$IoLibV;

    const-string/jumbo v1, "lnext"

    const/16 v2, 0x13

    invoke-direct {v0, p1, v1, v2, p0}, Lorg/luaj/vm2/lib/IoLib$IoLibV;-><init>(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;ILorg/luaj/vm2/lib/IoLib;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "lines: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Lorg/luaj/vm2/lib/IoLib$File;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 7

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/luaj/vm2/Varargs;->narg()I

    move-result v4

    new-array v5, v4, [Lorg/luaj/vm2/LuaValue;

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_3

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/Varargs;->arg(I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->type()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    const-string/jumbo v1, "(invalid format)"

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->argerror(ILjava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_0
    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->toint()I

    move-result v0

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/IoLib;->freadbytes(Lorg/luaj/vm2/lib/IoLib$File;I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_3
    add-int/lit8 v1, v2, 0x1

    aput-object v0, v5, v2

    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    :goto_4
    if-nez v0, :cond_1

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0}, Lorg/luaj/vm2/LuaValue;->checkstring()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    iget v1, v0, Lorg/luaj/vm2/LuaString;->m_length:I

    const/4 v6, 0x2

    if-ne v1, v6, :cond_0

    iget-object v1, v0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v6, v0, Lorg/luaj/vm2/LuaString;->m_offset:I

    aget-byte v1, v1, v6

    const/16 v6, 0x2a

    if-ne v1, v6, :cond_0

    iget-object v1, v0, Lorg/luaj/vm2/LuaString;->m_bytes:[B

    iget v0, v0, Lorg/luaj/vm2/LuaString;->m_offset:I

    add-int/lit8 v0, v0, 0x1

    aget-byte v0, v1, v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-static {p0}, Lorg/luaj/vm2/lib/IoLib;->freadall(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_3

    :sswitch_1
    invoke-static {p0}, Lorg/luaj/vm2/lib/IoLib;->freadnumber(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_3

    :sswitch_2
    invoke-static {p0}, Lorg/luaj/vm2/lib/IoLib;->freadline(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_3

    :cond_1
    invoke-static {v5, v3, v0}, Lorg/luaj/vm2/lib/IoLib;->varargsOf([Lorg/luaj/vm2/LuaValue;II)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    goto :goto_2

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x6c -> :sswitch_2
        0x6e -> :sswitch_1
    .end sparse-switch
.end method

.method private b()Lorg/luaj/vm2/lib/IoLib$File;
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    const-string/jumbo v1, "-"

    const-string/jumbo v2, "w"

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->a(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    goto :goto_0
.end method

.method private b(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;
    .locals 6

    packed-switch p1, :pswitch_data_0

    const-string/jumbo v0, "r"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string/jumbo v0, "a"

    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const-string/jumbo v0, "+"

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v4, 0x1

    :goto_0
    const-string/jumbo v0, "b"

    invoke-virtual {p3, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Lorg/luaj/vm2/lib/IoLib;->openFile(Ljava/lang/String;ZZZZ)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    :goto_1
    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib;->wrapStdin()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib;->wrapStdout()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_1

    :pswitch_2
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib;->wrapStderr()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static b(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;
    .locals 1

    instance-of v0, p0, Lorg/luaj/vm2/lib/IoLib$File;

    if-eqz v0, :cond_0

    check-cast p0, Lorg/luaj/vm2/lib/IoLib$File;

    :goto_0
    return-object p0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method private static c(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/lib/IoLib$File;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->isclosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "attempt to use a closed file"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->error(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    :cond_0
    return-object p0
.end method

.method static class$(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2

    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static freadall(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->remaining()I

    move-result v0

    if-ltz v0, :cond_0

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/IoLib;->freadbytes(Lorg/luaj/vm2/lib/IoLib$File;I)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/IoLib;->freaduntil(Lorg/luaj/vm2/lib/IoLib$File;Z)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    goto :goto_0
.end method

.method public static freadbytes(Lorg/luaj/vm2/lib/IoLib$File;I)Lorg/luaj/vm2/LuaValue;
    .locals 3

    const/4 v2, 0x0

    new-array v0, p1, [B

    invoke-virtual {p0, v0, v2, p1}, Lorg/luaj/vm2/lib/IoLib$File;->read([BII)I

    move-result v1

    if-gez v1, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {v0, v2, v1}, Lorg/luaj/vm2/LuaString;->valueOf([BII)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_0
.end method

.method public static freadline(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/LuaValue;
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/luaj/vm2/lib/IoLib;->freaduntil(Lorg/luaj/vm2/lib/IoLib$File;Z)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public static freadnumber(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/LuaValue;
    .locals 3

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const-string/jumbo v1, " \t\r\n"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const-string/jumbo v1, "-+"

    invoke-static {p0, v1, v0}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const-string/jumbo v1, "0123456789"

    invoke-static {p0, v1, v0}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const-string/jumbo v1, "."

    invoke-static {p0, v1, v0}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    const-string/jumbo v1, "0123456789"

    invoke-static {p0, v1, v0}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/luaj/vm2/lib/IoLib;->valueOf(D)Lorg/luaj/vm2/LuaNumber;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public static freaduntil(Lorg/luaj/vm2/lib/IoLib$File;Z)Lorg/luaj/vm2/LuaValue;
    .locals 2

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz p1, :cond_1

    :goto_0
    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->read()I

    move-result v0

    if-lez v0, :cond_0

    packed-switch v0, :pswitch_data_0

    :pswitch_1
    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    :cond_0
    :pswitch_2
    if-gez v0, :cond_2

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->NIL:Lorg/luaj/vm2/LuaValue;

    :goto_1
    return-object v0

    :cond_1
    :goto_2
    :try_start_1
    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib$File;->read()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {v1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/LuaString;->valueOf([B)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public _file_close(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public _file_flush(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/IoLib$File;->flush()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    return-object v0
.end method

.method public _file_lines(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/luaj/vm2/lib/IoLib;->b(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public _file_read(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/luaj/vm2/lib/IoLib;->b(Lorg/luaj/vm2/lib/IoLib$File;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public _file_seek(Lorg/luaj/vm2/LuaValue;Ljava/lang/String;I)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/luaj/vm2/lib/IoLib$File;->seek(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->valueOf(I)Lorg/luaj/vm2/LuaInteger;

    move-result-object v0

    return-object v0
.end method

.method public _file_setvbuf(Lorg/luaj/vm2/LuaValue;Ljava/lang/String;I)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Lorg/luaj/vm2/lib/IoLib$File;->setvbuf(Ljava/lang/String;I)V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    return-object v0
.end method

.method public _file_write(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public _io_close(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->b()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->c(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/lib/IoLib$File;

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_0
.end method

.method public _io_flush()Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->b()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->c(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/lib/IoLib$File;

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/IoLib$File;->flush()V

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    return-object v0
.end method

.method public _io_index(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 3

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->e:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->b()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->d:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->a()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->f:Lorg/luaj/vm2/LuaValue;

    invoke-virtual {p1, v0}, Lorg/luaj/vm2/LuaValue;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->c:Lorg/luaj/vm2/lib/IoLib$File;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->c:Lorg/luaj/vm2/lib/IoLib$File;

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    const-string/jumbo v1, "-"

    const-string/jumbo v2, "w"

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->a(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->c:Lorg/luaj/vm2/lib/IoLib$File;

    goto :goto_0

    :cond_3
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public _io_input(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->a()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "r"

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->a(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_0
.end method

.method public _io_lines(Ljava/lang/String;)Lorg/luaj/vm2/Varargs;
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->a()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->c(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/lib/IoLib$File;

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/lib/IoLib;->b(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x3

    const-string/jumbo v1, "r"

    invoke-direct {p0, v0, p1, v1}, Lorg/luaj/vm2/lib/IoLib;->a(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_0
.end method

.method public _io_open(Ljava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/Varargs;
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, v0, p1, p2}, Lorg/luaj/vm2/lib/IoLib;->b(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    return-object v0
.end method

.method public _io_output(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isnil()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->b()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->isstring()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    invoke-virtual {p1}, Lorg/luaj/vm2/LuaValue;->checkjstring()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "w"

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/lib/IoLib;->a(ILjava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    goto :goto_0
.end method

.method public _io_popen(Ljava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lorg/luaj/vm2/lib/IoLib;->openProgram(Ljava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    return-object v0
.end method

.method public _io_read(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->a()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->c(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/lib/IoLib$File;

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->a:Lorg/luaj/vm2/lib/IoLib$File;

    invoke-static {v0, p1}, Lorg/luaj/vm2/lib/IoLib;->b(Lorg/luaj/vm2/lib/IoLib$File;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public _io_tmpfile()Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/lib/IoLib;->tmpFile()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    return-object v0
.end method

.method public _io_type(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->b(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lorg/luaj/vm2/lib/IoLib$File;->isclosed()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->h:Lorg/luaj/vm2/LuaValue;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->g:Lorg/luaj/vm2/LuaValue;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->NIL:Lorg/luaj/vm2/LuaValue;

    goto :goto_0
.end method

.method public _io_write(Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-direct {p0}, Lorg/luaj/vm2/lib/IoLib;->b()Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->c(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/lib/IoLib$File;

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->b:Lorg/luaj/vm2/lib/IoLib$File;

    invoke-static {v0, p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/lib/IoLib$File;Lorg/luaj/vm2/Varargs;)Lorg/luaj/vm2/Varargs;

    move-result-object v0

    return-object v0
.end method

.method public _lines_iter(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/Varargs;
    .locals 1

    invoke-static {p1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/lib/IoLib$File;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->freadline(Lorg/luaj/vm2/lib/IoLib$File;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    return-object v0
.end method

.method public call(Lorg/luaj/vm2/LuaValue;Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;
    .locals 6

    invoke-virtual {p2}, Lorg/luaj/vm2/LuaValue;->checkglobals()Lorg/luaj/vm2/Globals;

    move-result-object v0

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->globals:Lorg/luaj/vm2/Globals;

    new-instance v1, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v1}, Lorg/luaj/vm2/LuaTable;-><init>()V

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    if-nez v0, :cond_0

    const-string/jumbo v0, "org.luaj.vm2.lib.IoLib$IoLibV"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    :goto_0
    sget-object v2, Lorg/luaj/vm2/lib/IoLib;->IO_NAMES:[Ljava/lang/String;

    invoke-virtual {p0, v1, v0, v2}, Lorg/luaj/vm2/lib/IoLib;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;)V

    new-instance v0, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v0}, Lorg/luaj/vm2/LuaTable;-><init>()V

    iput-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->filemethods:Lorg/luaj/vm2/LuaTable;

    iget-object v2, p0, Lorg/luaj/vm2/lib/IoLib;->filemethods:Lorg/luaj/vm2/LuaTable;

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.luaj.vm2.lib.IoLib$IoLibV"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    :goto_1
    sget-object v3, Lorg/luaj/vm2/lib/IoLib;->FILE_NAMES:[Ljava/lang/String;

    const/16 v4, 0xb

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/luaj/vm2/lib/IoLib;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V

    new-instance v2, Lorg/luaj/vm2/LuaTable;

    invoke-direct {v2}, Lorg/luaj/vm2/LuaTable;-><init>()V

    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    if-nez v0, :cond_2

    const-string/jumbo v0, "org.luaj.vm2.lib.IoLib$IoLibV"

    invoke-static {v0}, Lorg/luaj/vm2/lib/IoLib;->class$(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    :goto_2
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "__index"

    aput-object v5, v3, v4

    const/16 v4, 0x12

    invoke-virtual {p0, v2, v0, v3, v4}, Lorg/luaj/vm2/lib/IoLib;->bind(Lorg/luaj/vm2/LuaValue;Ljava/lang/Class;[Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/LuaTable;->setmetatable(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/LuaValue;

    invoke-direct {p0, v1}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaTable;)V

    iget-object v0, p0, Lorg/luaj/vm2/lib/IoLib;->filemethods:Lorg/luaj/vm2/LuaTable;

    invoke-direct {p0, v0}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaTable;)V

    invoke-direct {p0, v2}, Lorg/luaj/vm2/lib/IoLib;->a(Lorg/luaj/vm2/LuaTable;)V

    const-string/jumbo v0, "io"

    invoke-virtual {p2, v0, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    const-string/jumbo v0, "package"

    invoke-virtual {p2, v0}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "loaded"

    invoke-virtual {v0, v2}, Lorg/luaj/vm2/LuaValue;->get(Ljava/lang/String;)Lorg/luaj/vm2/LuaValue;

    move-result-object v0

    const-string/jumbo v2, "io"

    invoke-virtual {v0, v2, v1}, Lorg/luaj/vm2/LuaValue;->set(Ljava/lang/String;Lorg/luaj/vm2/LuaValue;)V

    return-object v1

    :cond_0
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    goto :goto_0

    :cond_1
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    goto :goto_1

    :cond_2
    sget-object v0, Lorg/luaj/vm2/lib/IoLib;->class$org$luaj$vm2$lib$IoLib$IoLibV:Ljava/lang/Class;

    goto :goto_2
.end method

.method protected abstract openFile(Ljava/lang/String;ZZZZ)Lorg/luaj/vm2/lib/IoLib$File;
.end method

.method protected abstract openProgram(Ljava/lang/String;Ljava/lang/String;)Lorg/luaj/vm2/lib/IoLib$File;
.end method

.method protected abstract tmpFile()Lorg/luaj/vm2/lib/IoLib$File;
.end method

.method protected abstract wrapStderr()Lorg/luaj/vm2/lib/IoLib$File;
.end method

.method protected abstract wrapStdin()Lorg/luaj/vm2/lib/IoLib$File;
.end method

.method protected abstract wrapStdout()Lorg/luaj/vm2/lib/IoLib$File;
.end method
