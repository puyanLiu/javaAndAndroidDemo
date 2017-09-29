.class public Lorg/luaj/vm2/parser/LuaParser;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/luaj/vm2/parser/LuaParserConstants;


# static fields
.field private static g:[I

.field private static h:[I

.field private static i:[I


# instance fields
.field private a:I

.field private b:Lorg/luaj/vm2/parser/Token;

.field private c:Lorg/luaj/vm2/parser/Token;

.field private d:I

.field private e:I

.field private final f:[I

.field private final j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

.field jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

.field public jj_nt:Lorg/luaj/vm2/parser/Token;

.field private k:Z

.field private l:I

.field private final m:Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

.field private n:Ljava/util/List;

.field private o:[I

.field private p:I

.field private q:[I

.field private r:I

.field public token:Lorg/luaj/vm2/parser/Token;

.field public token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v1, 0x22

    const/4 v0, 0x1

    invoke-static {v0}, Lorg/luaj/vm2/LuaValue;->valueOf(Z)Lorg/luaj/vm2/LuaBoolean;

    new-array v0, v1, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/luaj/vm2/parser/LuaParser;->g:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/luaj/vm2/parser/LuaParser;->h:[I

    new-array v0, v1, [I

    fill-array-data v0, :array_2

    sput-object v0, Lorg/luaj/vm2/parser/LuaParser;->i:[I

    return-void

    :array_0
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x0
        0x0
        0x0
        -0x40000000    # -2.0f
        0x0
        0x0
        0x0
        0x0
        0xf800000
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf800000
        0xf800000
        0xf800000
        0x0
        0xf800000
        0xf800000
        0xf800000
        0x0
        0x0
        0x0
        0xf800000
        0x0
        0x0
        0xf800000
        0x0
        0x20000000
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0xc42f0
        0x2000
        0x0
        0x0
        0x440c0
        0x30
        0x80200
        0x2
        0x1
        0x60190c28
        0x0
        0x0
        0x0
        0x0
        0x0
        0x80000
        0x60000000
        0x60190c28
        0x60000000
        0x0
        0x60190428
        0x60000000
        0x60190c28
        0x80000
        0x0
        0x80000
        0x60190c28
        0x0
        0x0
        0x60190c28
        0x0
        0x1000
        0x800
    .end array-data

    :array_2
    .array-data 4
        0x20
        0x842
        0x0
        0x100
        0x80
        0x42
        0x0
        0x800
        0x0
        0x0
        0x98820
        0x40
        0x180
        0x100
        0x200
        0x400
        0x800
        0x12e00
        0x98820
        0x10800
        0x100
        0x18800
        0x0
        0x98820
        0x8000
        0x100
        0x8000
        0x9a820
        0x140
        0x2000
        0x98820
        0x140
        0x7ffc0000
        0x80020
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/luaj/vm2/parser/LuaParser;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6

    const/16 v5, 0x22

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    iput-boolean v0, p0, Lorg/luaj/vm2/parser/LuaParser;->k:Z

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->l:I

    new-instance v1, Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;-><init>(Lorg/luaj/vm2/parser/LuaParser$1;)V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->m:Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParser;->p:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->q:[I

    :try_start_0
    new-instance v1, Lorg/luaj/vm2/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-direct {v1, p1, p2, v2, v3}, Lorg/luaj/vm2/parser/SimpleCharStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;II)V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;-><init>(Lorg/luaj/vm2/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    new-instance v1, Lorg/luaj/vm2/parser/Token;

    invoke-direct {v1}, Lorg/luaj/vm2/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    new-instance v2, Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    invoke-direct {v2}, Lorg/luaj/vm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 6

    const/16 v5, 0x22

    const/4 v4, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v5, [I

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    iput-boolean v0, p0, Lorg/luaj/vm2/parser/LuaParser;->k:Z

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->l:I

    new-instance v1, Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;-><init>(Lorg/luaj/vm2/parser/LuaParser$1;)V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->m:Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->p:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->q:[I

    new-instance v1, Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-direct {v1, p1, v4, v4}, Lorg/luaj/vm2/parser/SimpleCharStream;-><init>(Ljava/io/Reader;II)V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    new-instance v1, Lorg/luaj/vm2/parser/LuaParserTokenManager;

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-direct {v1, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;-><init>(Lorg/luaj/vm2/parser/SimpleCharStream;)V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    new-instance v1, Lorg/luaj/vm2/parser/Token;

    invoke-direct {v1}, Lorg/luaj/vm2/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    move v1, v0

    :goto_0
    if-ge v1, v5, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    new-instance v2, Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    invoke-direct {v2}, Lorg/luaj/vm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/luaj/vm2/parser/LuaParserTokenManager;)V
    .locals 5

    const/16 v4, 0x22

    const/4 v3, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v1, v4, [I

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v1, 0x7

    new-array v1, v1, [Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    iput-boolean v0, p0, Lorg/luaj/vm2/parser/LuaParser;->k:Z

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->l:I

    new-instance v1, Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;-><init>(Lorg/luaj/vm2/parser/LuaParser$1;)V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->m:Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->p:I

    const/16 v1, 0x64

    new-array v1, v1, [I

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->q:[I

    iput-object p1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    new-instance v1, Lorg/luaj/vm2/parser/Token;

    invoke-direct {v1}, Lorg/luaj/vm2/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    move v1, v0

    :goto_0
    if-ge v1, v4, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    new-instance v2, Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    invoke-direct {v2}, Lorg/luaj/vm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private a()J
    .locals 4

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/SimpleCharStream;->getBeginLine()I

    move-result v0

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->getBeginColumn()I

    move-result v2

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method

.method private static a(Lorg/luaj/vm2/ast/Exp$PrimaryExp;)Lorg/luaj/vm2/ast/Exp$VarExp;
    .locals 2

    invoke-virtual {p0}, Lorg/luaj/vm2/ast/Exp$PrimaryExp;->isvarexp()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    const-string/jumbo v1, "expected variable"

    invoke-direct {v0, v1}, Lorg/luaj/vm2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p0, Lorg/luaj/vm2/ast/Exp$VarExp;

    return-object p0
.end method

.method private a(I)Lorg/luaj/vm2/parser/Token;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v2, v1, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v2, v2, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    :goto_0
    const/4 v2, -0x1

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget v2, v2, Lorg/luaj/vm2/parser/Token;->kind:I

    if-ne v2, p1, :cond_4

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->l:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParser;->l:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_3

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->l:I

    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    aget-object v1, v1, v0

    :goto_2
    if-eqz v1, :cond_2

    iget v2, v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->gen:I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    if-ge v2, v3, :cond_0

    const/4 v2, 0x0

    iput-object v2, v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->first:Lorg/luaj/vm2/parser/Token;

    :cond_0
    iget-object v1, v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->next:Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    invoke-virtual {v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->getNextToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v3

    iput-object v3, v2, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    return-object v0

    :cond_4
    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput p1, p0, Lorg/luaj/vm2/parser/LuaParser;->p:I

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->generateParseException()Lorg/luaj/vm2/parser/ParseException;

    move-result-object v0

    throw v0
.end method

.method private a(II)V
    .locals 6

    const/4 v1, 0x0

    const/16 v0, 0x64

    if-lt p2, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    add-int/lit8 v0, v0, 0x1

    if-ne p2, v0, :cond_2

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->q:[I

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    aput p1, v0, v1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    move v0, v1

    :goto_1
    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    if-ge v0, v2, :cond_3

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->q:[I

    aget v3, v3, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    array-length v2, v0

    iget-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    array-length v4, v4

    if-ne v2, v4, :cond_4

    move v2, v1

    :goto_2
    iget-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    array-length v4, v4

    if-ge v2, v4, :cond_5

    aget v4, v0, v2

    iget-object v5, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    aget v5, v5, v2

    if-ne v4, v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    if-eqz p2, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->q:[I

    iput p2, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    add-int/lit8 v1, p2, -0x1

    aput p1, v0, v1

    goto :goto_0
.end method

.method private a(Lorg/luaj/vm2/ast/SyntaxElement;J)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p2, v0

    long-to-int v0, v0

    iput v0, p1, Lorg/luaj/vm2/ast/SyntaxElement;->beginLine:I

    long-to-int v0, p2

    int-to-short v0, v0

    iput-short v0, p1, Lorg/luaj/vm2/ast/SyntaxElement;->beginColumn:S

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget v0, v0, Lorg/luaj/vm2/parser/Token;->endLine:I

    iput v0, p1, Lorg/luaj/vm2/ast/SyntaxElement;->endLine:I

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget v0, v0, Lorg/luaj/vm2/parser/Token;->endColumn:I

    int-to-short v0, v0

    iput-short v0, p1, Lorg/luaj/vm2/ast/SyntaxElement;->endColumn:S

    return-void
.end method

.method private b(II)V
    .locals 3

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    aget-object v0, v0, p1

    :goto_0
    iget v1, v0, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->gen:I

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->next:Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    if-nez v1, :cond_1

    new-instance v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    invoke-direct {v1}, Lorg/luaj/vm2/parser/LuaParser$JJCalls;-><init>()V

    iput-object v1, v0, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->next:Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    move-object v0, v1

    :cond_0
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    add-int/2addr v1, p2

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->gen:I

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v1, v0, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->first:Lorg/luaj/vm2/parser/Token;

    iput p2, v0, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->arg:I

    return-void

    :cond_1
    iget-object v0, v0, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->next:Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    goto :goto_0
.end method

.method private b()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x3

    const/4 v1, 0x0

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->n()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    invoke-direct {p0, v1, v3}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-direct {p0, v1, v3}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, v3}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    throw v0
.end method

.method private b(I)Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v1, v1, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    if-nez v1, :cond_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    invoke-virtual {v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->getNextToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v2

    iput-object v2, v1, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :goto_0
    iget-boolean v1, p0, Lorg/luaj/vm2/parser/LuaParser;->k:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    move v2, v0

    :goto_1
    if-eqz v1, :cond_2

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    if-eq v1, v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    iget-object v1, v1, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v1, v1, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v1, v1, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(II)V

    :cond_3
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget v1, v1, Lorg/luaj/vm2/parser/Token;->kind:I

    if-eq v1, p1, :cond_5

    const/4 v0, 0x1

    :cond_4
    return v0

    :cond_5
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    if-nez v1, :cond_4

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    if-ne v1, v2, :cond_4

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->m:Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess;

    throw v0
.end method

.method private c()Z
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->l()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-direct {p0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    move v0, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    throw v0
.end method

.method private d()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v2, 0x2

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->i()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v2, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v2, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v2, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    throw v0
.end method

.method private e()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x3

    const/4 v2, 0x2

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->m()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    throw v0
.end method

.method private f()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x4

    const/4 v2, 0x2

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->j()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    throw v0
.end method

.method private g()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x5

    const/4 v2, 0x2

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->p()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    throw v0
.end method

.method private h()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v3, 0x6

    const/4 v2, 0x2

    iput v2, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    :try_start_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->q()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    :goto_1
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    goto :goto_1

    :catchall_0
    move-exception v0

    invoke-direct {p0, v3, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(II)V

    throw v0
.end method

.method private i()Z
    .locals 5

    const/16 v4, 0x33

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x49

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_f

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x4d

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_f

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x4a

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-eqz v2, :cond_f

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_3
    if-eqz v2, :cond_d

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->s()Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v0

    :goto_4
    if-eqz v2, :cond_d

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->o()Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    :goto_5
    if-eqz v2, :cond_d

    move v2, v0

    :goto_6
    if-eqz v2, :cond_e

    move v2, v0

    :goto_7
    if-eqz v2, :cond_f

    move v2, v0

    :goto_8
    if-eqz v2, :cond_10

    :goto_9
    return v0

    :cond_0
    invoke-direct {p0, v4}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->k()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0, v4}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_2

    :cond_5
    move v2, v1

    goto :goto_2

    :cond_6
    iget-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->k()Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_a
    if-eqz v2, :cond_9

    move v2, v0

    :goto_b
    if-eqz v2, :cond_7

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    :cond_7
    const/16 v2, 0x4c

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v0

    goto :goto_3

    :cond_8
    move v2, v1

    goto :goto_a

    :cond_9
    move v2, v1

    goto :goto_b

    :cond_a
    move v2, v1

    goto :goto_3

    :cond_b
    move v2, v1

    goto :goto_4

    :cond_c
    move v2, v1

    goto :goto_5

    :cond_d
    move v2, v1

    goto :goto_6

    :cond_e
    move v2, v1

    goto :goto_7

    :cond_f
    move v2, v1

    goto :goto_8

    :cond_10
    move v0, v1

    goto :goto_9
.end method

.method private j()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x52

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_1
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x54

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_2
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x55

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_3
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x56

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_4
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x57

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_5
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x58

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_6
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x59

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_8

    move v2, v0

    :goto_7
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x5a

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    :goto_8
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x5b

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v0

    :goto_9
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x5c

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_b

    move v2, v0

    :goto_a
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x5d

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_c

    move v2, v0

    :goto_b
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x5e

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_d

    move v2, v0

    :goto_c
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x1d

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_e

    move v2, v0

    :goto_d
    if-eqz v2, :cond_10

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x2c

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_f

    move v2, v0

    :goto_e
    if-eqz v2, :cond_10

    move v2, v0

    :goto_f
    if-eqz v2, :cond_11

    :cond_0
    :goto_10
    return v0

    :cond_1
    move v2, v1

    goto/16 :goto_0

    :cond_2
    move v2, v1

    goto/16 :goto_1

    :cond_3
    move v2, v1

    goto/16 :goto_2

    :cond_4
    move v2, v1

    goto/16 :goto_3

    :cond_5
    move v2, v1

    goto/16 :goto_4

    :cond_6
    move v2, v1

    goto/16 :goto_5

    :cond_7
    move v2, v1

    goto/16 :goto_6

    :cond_8
    move v2, v1

    goto :goto_7

    :cond_9
    move v2, v1

    goto :goto_8

    :cond_a
    move v2, v1

    goto :goto_9

    :cond_b
    move v2, v1

    goto :goto_a

    :cond_c
    move v2, v1

    goto :goto_b

    :cond_d
    move v2, v1

    goto :goto_c

    :cond_e
    move v2, v1

    goto :goto_d

    :cond_f
    move v2, v1

    goto :goto_e

    :cond_10
    move v2, v1

    goto :goto_f

    :cond_11
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->k()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_10
.end method

.method private k()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x2a

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x30

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x23

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x34

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_3
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->o()Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_4
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x4f

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_5
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->s()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_6
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x25

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_7

    move v2, v0

    :goto_7
    if-eqz v2, :cond_8

    move v2, v0

    :goto_8
    if-eqz v2, :cond_e

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x33

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v0

    :goto_9
    if-eqz v2, :cond_b

    iput-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x4b

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_a

    move v2, v0

    :goto_a
    if-eqz v2, :cond_b

    move v2, v0

    :goto_b
    if-eqz v2, :cond_c

    move v2, v0

    :goto_c
    if-eqz v2, :cond_d

    move v2, v0

    :goto_d
    if-eqz v2, :cond_e

    move v2, v0

    :goto_e
    if-eqz v2, :cond_f

    move v2, v0

    :goto_f
    if-eqz v2, :cond_15

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x53

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_10

    move v2, v0

    :goto_10
    if-eqz v2, :cond_13

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x2b

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v0

    :goto_11
    if-eqz v2, :cond_13

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x45

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_12

    move v2, v0

    :goto_12
    if-eqz v2, :cond_13

    move v2, v0

    :goto_13
    if-eqz v2, :cond_14

    move v2, v0

    :goto_14
    if-eqz v2, :cond_15

    :goto_15
    return v0

    :cond_0
    move v2, v1

    goto/16 :goto_0

    :cond_1
    move v2, v1

    goto/16 :goto_1

    :cond_2
    move v2, v1

    goto/16 :goto_2

    :cond_3
    move v2, v1

    goto/16 :goto_3

    :cond_4
    move v2, v1

    goto/16 :goto_4

    :cond_5
    move v2, v1

    goto/16 :goto_5

    :cond_6
    move v2, v1

    goto :goto_6

    :cond_7
    move v2, v1

    goto :goto_7

    :cond_8
    move v2, v1

    goto :goto_8

    :cond_9
    move v2, v1

    goto :goto_9

    :cond_a
    move v2, v1

    goto :goto_a

    :cond_b
    move v2, v1

    goto :goto_b

    :cond_c
    move v2, v1

    goto :goto_c

    :cond_d
    move v2, v1

    goto :goto_d

    :cond_e
    move v2, v1

    goto :goto_e

    :cond_f
    move v2, v1

    goto :goto_f

    :cond_10
    move v2, v1

    goto :goto_10

    :cond_11
    move v2, v1

    goto :goto_11

    :cond_12
    move v2, v1

    goto :goto_12

    :cond_13
    move v2, v1

    goto :goto_13

    :cond_14
    move v2, v1

    goto :goto_14

    :cond_15
    move v0, v1

    goto :goto_15
.end method

.method private l()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x25

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private m()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/luaj/vm2/parser/LuaParser;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-direct {v0, v1}, Lorg/luaj/vm2/parser/LuaParser;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/LuaParser;->Chunk()Lorg/luaj/vm2/ast/Chunk;

    return-void
.end method

.method private n()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x24

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0x47

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private o()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x3d

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_7

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x3e

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_7

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x17

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v0

    :goto_2
    if-eqz v2, :cond_7

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x18

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_3
    if-eqz v2, :cond_7

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x19

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_4

    move v2, v0

    :goto_4
    if-eqz v2, :cond_7

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x1a

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v0

    :goto_5
    if-eqz v2, :cond_7

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x1b

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v0

    :goto_6
    if-eqz v2, :cond_7

    :goto_7
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v2, v1

    goto :goto_2

    :cond_3
    move v2, v1

    goto :goto_3

    :cond_4
    move v2, v1

    goto :goto_4

    :cond_5
    move v2, v1

    goto :goto_5

    :cond_6
    move v2, v1

    goto :goto_6

    :cond_7
    move v0, v1

    goto :goto_7
.end method

.method private p()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v3, 0x48

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x46

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    :cond_0
    :goto_1
    return v0

    :cond_1
    move v2, v1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->r()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_1
.end method

.method private q()Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x33

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x47

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private r()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    const/16 v2, 0x4d

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    :goto_0
    if-eqz v2, :cond_2

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->q()Z

    move-result v2

    if-eqz v2, :cond_2

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->k()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v0

    :goto_1
    if-eqz v2, :cond_2

    :goto_2
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2
.end method

.method private s()Z
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x1

    const/16 v2, 0x50

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->r()Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v0

    :goto_1
    if-eqz v2, :cond_4

    move v2, v0

    :goto_2
    if-eqz v2, :cond_2

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    :cond_2
    const/16 v2, 0x51

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->b(I)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_2
.end method

.method private t()I
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_nt:Lorg/luaj/vm2/parser/Token;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->getNextToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iget v0, v1, Lorg/luaj/vm2/parser/Token;->kind:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_nt:Lorg/luaj/vm2/parser/Token;

    iget v0, v0, Lorg/luaj/vm2/parser/Token;->kind:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0
.end method


# virtual methods
.method public final Assign(Lorg/luaj/vm2/ast/Exp$VarExp;)Lorg/luaj/vm2/ast/Stat;
    .locals 6

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v2

    :goto_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v4, 0xd

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v0, v4

    const/16 v0, 0x47

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0}, Lorg/luaj/vm2/ast/Stat;->assignment(Ljava/util/List;Ljava/util/List;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->VarExp()Lorg/luaj/vm2/ast/Exp$VarExp;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final Binop()I
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x20

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x52

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0xd

    :goto_1
    return v0

    :sswitch_1
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0xe

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x54

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0xf

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x55

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x10

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x56

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x12

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x57

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x11

    goto :goto_1

    :sswitch_6
    const/16 v0, 0x58

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x16

    goto :goto_1

    :sswitch_7
    const/16 v0, 0x59

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x19

    goto :goto_1

    :sswitch_8
    const/16 v0, 0x5a

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x1a

    goto :goto_1

    :sswitch_9
    const/16 v0, 0x5b

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x3f

    goto :goto_1

    :sswitch_a
    const/16 v0, 0x5c

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x3e

    goto :goto_1

    :sswitch_b
    const/16 v0, 0x5d

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x18

    goto :goto_1

    :sswitch_c
    const/16 v0, 0x5e

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x3d

    goto :goto_1

    :sswitch_d
    const/16 v0, 0x1d

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x3c

    goto :goto_1

    :sswitch_e
    const/16 v0, 0x2c

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x3b

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_d
        0x2c -> :sswitch_e
        0x52 -> :sswitch_0
        0x53 -> :sswitch_1
        0x54 -> :sswitch_2
        0x55 -> :sswitch_3
        0x56 -> :sswitch_4
        0x57 -> :sswitch_5
        0x58 -> :sswitch_6
        0x59 -> :sswitch_7
        0x5a -> :sswitch_8
        0x5b -> :sswitch_9
        0x5c -> :sswitch_a
        0x5d -> :sswitch_b
        0x5e -> :sswitch_c
    .end sparse-switch
.end method

.method public final Block()Lorg/luaj/vm2/ast/Block;
    .locals 7

    const/4 v6, -0x1

    new-instance v1, Lorg/luaj/vm2/ast/Block;

    invoke-direct {v1}, Lorg/luaj/vm2/ast/Block;-><init>()V

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v2

    :goto_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v6, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_1
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v4, 0x1

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v0, v4

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_2
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v4, 0x2

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v0, v4

    :goto_3
    invoke-direct {p0, v1, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v1

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :sswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Stat()Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/ast/Block;->add(Lorg/luaj/vm2/ast/Stat;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ReturnStat()Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-virtual {v1, v0}, Lorg/luaj/vm2/ast/Block;->add(Lorg/luaj/vm2/ast/Stat;)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_0
        0x1f -> :sswitch_0
        0x24 -> :sswitch_0
        0x25 -> :sswitch_0
        0x26 -> :sswitch_0
        0x27 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2e -> :sswitch_0
        0x32 -> :sswitch_0
        0x33 -> :sswitch_0
        0x41 -> :sswitch_0
        0x46 -> :sswitch_0
        0x4b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x2d
        :pswitch_0
    .end packed-switch
.end method

.method public final Chunk()Lorg/luaj/vm2/ast/Chunk;
    .locals 5

    const/4 v4, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v3, v0, v4

    :goto_1
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v0

    invoke-direct {p0, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v3, Lorg/luaj/vm2/ast/Chunk;

    invoke-direct {v3, v0}, Lorg/luaj/vm2/ast/Chunk;-><init>(Lorg/luaj/vm2/ast/Block;)V

    invoke-direct {p0, v3, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v3

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->SwitchTo(I)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x45
        :pswitch_0
    .end packed-switch
.end method

.method public final Exp()Lorg/luaj/vm2/ast/Exp;
    .locals 5

    const/4 v3, -0x1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x17

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->SimpleExp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    :goto_1
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->f()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Binop()I

    move-result v3

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v4

    invoke-static {v0, v3, v4}, Lorg/luaj/vm2/ast/Exp;->binaryexp(Lorg/luaj/vm2/ast/Exp;ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Unop()I

    move-result v0

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/luaj/vm2/ast/Exp;->unaryexp(ILorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_1
        0x30 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x45 -> :sswitch_1
        0x4b -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final ExpList()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v2, 0x14

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v3, v0, v2

    return-object v1

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final ExprStat()Lorg/luaj/vm2/ast/Stat;
    .locals 7

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v3

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->PrimaryExp()Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    move-result-object v0

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v2

    :goto_0
    packed-switch v2, :pswitch_data_0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v5, 0xc

    iget v6, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v6, v2, v5

    :goto_1
    if-nez v1, :cond_2

    invoke-virtual {v0}, Lorg/luaj/vm2/ast/Exp$PrimaryExp;->isfunccall()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    const-string/jumbo v1, "expected function call"

    invoke-direct {v0, v1}, Lorg/luaj/vm2/parser/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :pswitch_0
    invoke-static {v0}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/Exp$PrimaryExp;)Lorg/luaj/vm2/ast/Exp$VarExp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->Assign(Lorg/luaj/vm2/ast/Exp$VarExp;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v1

    goto :goto_1

    :cond_1
    check-cast v0, Lorg/luaj/vm2/ast/Exp$FuncCall;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Stat;->functioncall(Lorg/luaj/vm2/ast/Exp$FuncCall;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    :goto_2
    invoke-direct {p0, v0, v3, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v0

    :cond_2
    move-object v0, v1

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x47
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final Field()Lorg/luaj/vm2/ast/TableField;
    .locals 7

    const/16 v6, 0x47

    const/4 v5, -0x1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v5, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v3, 0x1d

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v4, v0, v3

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    invoke-direct {p0, v6}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v3

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/luaj/vm2/ast/TableField;->namedField(Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/TableField;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    :goto_1
    return-object v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :pswitch_0
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v6}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v3

    invoke-static {v0, v3}, Lorg/luaj/vm2/ast/TableField;->keyedField(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/TableField;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :cond_1
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v5, :cond_2

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_2
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x1e

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v5}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_2

    :sswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/TableField;->listField(Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/TableField;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x4d
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x30 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x45 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public final FieldList()Ljava/util/List;
    .locals 4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Field()Lorg/luaj/vm2/ast/TableField;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FieldSep()V

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Field()Lorg/luaj/vm2/ast/TableField;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_1
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v2, 0x1c

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v3, v0, v2

    :goto_2
    return-object v1

    :cond_1
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FieldSep()V

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final FieldSep()V
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    :pswitch_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x1f

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :pswitch_1
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    :goto_1
    return-void

    :pswitch_2
    const/16 v0, 0x46

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final FuncArgs()Lorg/luaj/vm2/ast/FuncArgs;
    .locals 6

    const/4 v4, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v2

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x13

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v4, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_1
    sparse-switch v1, :sswitch_data_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v4, 0x12

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v1, v4

    :goto_2
    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {v0}, Lorg/luaj/vm2/ast/FuncArgs;->explist(Ljava/util/List;)Lorg/luaj/vm2/ast/FuncArgs;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    :goto_3
    return-object v0

    :cond_1
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :sswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v0

    goto :goto_2

    :sswitch_2
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->TableConstructor()Lorg/luaj/vm2/ast/TableConstructor;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/FuncArgs;->tableconstructor(Lorg/luaj/vm2/ast/TableConstructor;)Lorg/luaj/vm2/ast/FuncArgs;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_3
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Str()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/FuncArgs;->string(Lorg/luaj/vm2/LuaString;)Lorg/luaj/vm2/ast/FuncArgs;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_3
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_3
        0x3d -> :sswitch_3
        0x3e -> :sswitch_3
        0x4b -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x17 -> :sswitch_1
        0x18 -> :sswitch_1
        0x19 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1b -> :sswitch_1
        0x23 -> :sswitch_1
        0x25 -> :sswitch_1
        0x2a -> :sswitch_1
        0x2b -> :sswitch_1
        0x30 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x3d -> :sswitch_1
        0x3e -> :sswitch_1
        0x45 -> :sswitch_1
        0x4b -> :sswitch_1
        0x4f -> :sswitch_1
        0x50 -> :sswitch_1
        0x53 -> :sswitch_1
    .end sparse-switch
.end method

.method public final FuncBody()Lorg/luaj/vm2/ast/FuncBody;
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v2

    const/16 v1, 0x4b

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    const/4 v4, -0x1

    if-ne v1, v4, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v4, 0x18

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v1, v4

    :goto_1
    const/16 v1, 0x4c

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v1

    const/16 v4, 0x22

    invoke-direct {p0, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v4, Lorg/luaj/vm2/ast/FuncBody;

    invoke-direct {v4, v0, v1}, Lorg/luaj/vm2/ast/FuncBody;-><init>(Lorg/luaj/vm2/ast/ParList;Lorg/luaj/vm2/ast/Block;)V

    invoke-direct {p0, v4, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v4

    :cond_0
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ParList()Lorg/luaj/vm2/ast/ParList;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x4f -> :sswitch_0
    .end sparse-switch
.end method

.method public final FuncName()Lorg/luaj/vm2/ast/FuncName;
    .locals 7

    const/4 v6, -0x1

    const/16 v5, 0x33

    invoke-direct {p0, v5}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    new-instance v2, Lorg/luaj/vm2/ast/FuncName;

    iget-object v1, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/luaj/vm2/ast/FuncName;-><init>(Ljava/lang/String;)V

    :goto_0
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v6, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v3, 0xe

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v4, v1, v3

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v6, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v3, 0xf

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v4, v1, v3

    :goto_3
    iget v1, v0, Lorg/luaj/vm2/parser/Token;->beginLine:I

    iput v1, v2, Lorg/luaj/vm2/ast/SyntaxElement;->beginLine:I

    iget v0, v0, Lorg/luaj/vm2/parser/Token;->beginColumn:I

    int-to-short v0, v0

    iput-short v0, v2, Lorg/luaj/vm2/ast/SyntaxElement;->beginColumn:S

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget v0, v0, Lorg/luaj/vm2/parser/Token;->endLine:I

    iput v0, v2, Lorg/luaj/vm2/ast/SyntaxElement;->endLine:I

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget v0, v0, Lorg/luaj/vm2/parser/Token;->endColumn:I

    int-to-short v0, v0

    iput-short v0, v2, Lorg/luaj/vm2/ast/SyntaxElement;->endColumn:S

    return-object v2

    :cond_0
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :pswitch_0
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v5}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    iget-object v1, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lorg/luaj/vm2/ast/FuncName;->adddot(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_2

    :pswitch_1
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v5}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    iget-object v1, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    iput-object v1, v2, Lorg/luaj/vm2/ast/FuncName;->method:Ljava/lang/String;

    goto :goto_3

    :pswitch_data_0
    .packed-switch 0x49
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4a
        :pswitch_1
    .end packed-switch
.end method

.method public final FunctionCall()Lorg/luaj/vm2/ast/FuncBody;
    .locals 3

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v0

    const/16 v2, 0x25

    invoke-direct {p0, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FuncBody()Lorg/luaj/vm2/ast/FuncBody;

    move-result-object v2

    invoke-direct {p0, v2, v0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v2
.end method

.method public final IfThenElse()Lorg/luaj/vm2/ast/Stat;
    .locals 9

    const/16 v7, 0x2f

    const/4 v8, -0x1

    const/4 v1, 0x0

    const/16 v0, 0x27

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v4

    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v5

    move-object v0, v1

    move-object v2, v1

    :goto_0
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v3, v8, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v3

    :goto_1
    packed-switch v3, :pswitch_data_0

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v6, 0x8

    iget v7, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v7, v3, v6

    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v3, v8, :cond_3

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v3

    :goto_2
    packed-switch v3, :pswitch_data_1

    iget-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v6, 0x9

    iget v7, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v7, v3, v6

    :goto_3
    const/16 v3, 0x22

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {v4, v5, v2, v0, v1}, Lorg/luaj/vm2/ast/Stat;->ifthenelse(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    return-object v0

    :cond_0
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :pswitch_0
    const/16 v3, 0x21

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v3

    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v6

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    if-nez v0, :cond_2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_2
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    iget v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_2

    :pswitch_1
    const/16 v1, 0x20

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v1

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x21
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x20
        :pswitch_1
    .end packed-switch
.end method

.method public final Label()Lorg/luaj/vm2/ast/Stat;
    .locals 2

    const/16 v1, 0x41

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Stat;->labelstat(Ljava/lang/String;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    return-object v0
.end method

.method public final NameList()Ljava/util/List;
    .locals 4

    const/16 v3, 0x33

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v1

    new-instance v2, Lorg/luaj/vm2/ast/Name;

    iget-object v1, v1, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/luaj/vm2/ast/Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->e()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v1

    new-instance v2, Lorg/luaj/vm2/ast/Name;

    iget-object v1, v1, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-direct {v2, v1}, Lorg/luaj/vm2/ast/Name;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final ParList()Lorg/luaj/vm2/ast/ParList;
    .locals 8

    const/16 v7, 0x4f

    const/4 v0, 0x1

    const/4 v6, -0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v3

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v2, v6, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v2

    :goto_0
    sparse-switch v2, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x1a

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v6}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v5

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v2, v6, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v2

    :goto_1
    packed-switch v2, :pswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v2, 0x19

    iget v6, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v6, v0, v2

    move v0, v1

    :goto_2
    new-instance v1, Lorg/luaj/vm2/ast/ParList;

    invoke-direct {v1, v5, v0}, Lorg/luaj/vm2/ast/ParList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, v1, v3, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    move-object v0, v1

    :goto_3
    return-object v0

    :cond_1
    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_1

    :pswitch_0
    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    goto :goto_2

    :sswitch_1
    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v1, Lorg/luaj/vm2/ast/ParList;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v0}, Lorg/luaj/vm2/ast/ParList;-><init>(Ljava/util/List;Z)V

    invoke-direct {p0, v1, v3, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    move-object v0, v1

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x4f -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch
.end method

.method public final PostfixOp(Lorg/luaj/vm2/ast/Exp$PrimaryExp;)Lorg/luaj/vm2/ast/Exp$PrimaryExp;
    .locals 5

    const/16 v4, 0x33

    const/4 v3, -0x1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x11

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x49

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/luaj/vm2/ast/Exp;->fieldop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Ljava/lang/String;)Lorg/luaj/vm2/ast/Exp$FieldExp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    :goto_1
    return-object v0

    :sswitch_1
    const/16 v0, 0x4d

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    const/16 v3, 0x4e

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {p1, v0}, Lorg/luaj/vm2/ast/Exp;->indexop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp$IndexExp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x4a

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v4}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FuncArgs()Lorg/luaj/vm2/ast/FuncArgs;

    move-result-object v3

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Lorg/luaj/vm2/ast/Exp;->methodop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Ljava/lang/String;Lorg/luaj/vm2/ast/FuncArgs;)Lorg/luaj/vm2/ast/Exp$MethodCall;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_3
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FuncArgs()Lorg/luaj/vm2/ast/FuncArgs;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/luaj/vm2/ast/Exp;->functionop(Lorg/luaj/vm2/ast/Exp$PrimaryExp;Lorg/luaj/vm2/ast/FuncArgs;)Lorg/luaj/vm2/ast/Exp$FuncCall;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_3
        0x18 -> :sswitch_3
        0x19 -> :sswitch_3
        0x1a -> :sswitch_3
        0x1b -> :sswitch_3
        0x3d -> :sswitch_3
        0x3e -> :sswitch_3
        0x49 -> :sswitch_0
        0x4a -> :sswitch_2
        0x4b -> :sswitch_3
        0x4d -> :sswitch_1
        0x50 -> :sswitch_3
    .end sparse-switch
.end method

.method public final PrefixExp()Lorg/luaj/vm2/ast/Exp$PrimaryExp;
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x10

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x33

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->nameprefix(Ljava/lang/String;)Lorg/luaj/vm2/ast/Exp$NameExp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    :goto_1
    return-object v0

    :sswitch_1
    const/16 v0, 0x4b

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    const/16 v3, 0x4c

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->parensprefix(Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Exp$ParensExp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x33 -> :sswitch_0
        0x4b -> :sswitch_1
    .end sparse-switch
.end method

.method public final PrimaryExp()Lorg/luaj/vm2/ast/Exp$PrimaryExp;
    .locals 4

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v1

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->PrefixExp()Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    move-result-object v0

    :goto_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->PostfixOp(Lorg/luaj/vm2/ast/Exp$PrimaryExp;)Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v0
.end method

.method public ReInit(Ljava/io/InputStream;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/luaj/vm2/parser/LuaParser;->ReInit(Ljava/io/InputStream;Ljava/lang/String;)V

    return-void
.end method

.method public ReInit(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 5

    const/4 v4, -0x1

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, p1, p2, v2, v3}, Lorg/luaj/vm2/parser/SimpleCharStream;->ReInit(Ljava/io/InputStream;Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->ReInit(Lorg/luaj/vm2/parser/SimpleCharStream;)V

    new-instance v1, Lorg/luaj/vm2/parser/Token;

    invoke-direct {v1}, Lorg/luaj/vm2/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput v4, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    move v1, v0

    :goto_0
    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    new-instance v2, Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    invoke-direct {v2}, Lorg/luaj/vm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ReInit(Ljava/io/Reader;)V
    .locals 4

    const/4 v2, 0x1

    const/4 v3, -0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1, p1, v2, v2}, Lorg/luaj/vm2/parser/SimpleCharStream;->ReInit(Ljava/io/Reader;II)V

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    invoke-virtual {v1, v2}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->ReInit(Lorg/luaj/vm2/parser/SimpleCharStream;)V

    new-instance v1, Lorg/luaj/vm2/parser/Token;

    invoke-direct {v1}, Lorg/luaj/vm2/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    move v1, v0

    :goto_0
    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    new-instance v2, Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    invoke-direct {v2}, Lorg/luaj/vm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public ReInit(Lorg/luaj/vm2/parser/LuaParserTokenManager;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v0, 0x0

    iput-object p1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    new-instance v1, Lorg/luaj/vm2/parser/Token;

    invoke-direct {v1}, Lorg/luaj/vm2/parser/Token;-><init>()V

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    move v1, v0

    :goto_0
    const/16 v2, 0x22

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    new-instance v2, Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    invoke-direct {v2}, Lorg/luaj/vm2/parser/LuaParser$JJCalls;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public final ReturnStat()Lorg/luaj/vm2/ast/Stat;
    .locals 7

    const/4 v6, -0x1

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v2

    const/16 v1, 0x2d

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v6, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v4, 0xa

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v1, v4

    :goto_1
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v6, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_2
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v4, 0xb

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v1, v4

    :goto_3
    invoke-static {v0}, Lorg/luaj/vm2/ast/Stat;->returnstat(Ljava/util/List;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v0

    :cond_0
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_2

    :pswitch_0
    const/16 v1, 0x46

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    goto :goto_3

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x30 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x45 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x46
        :pswitch_0
    .end packed-switch
.end method

.method public final SimpleExp()Lorg/luaj/vm2/ast/Exp;
    .locals 4

    const/4 v3, -0x1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x15

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x2a

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    sget-object v0, Lorg/luaj/vm2/LuaValue;->NIL:Lorg/luaj/vm2/LuaValue;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->constant(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    :goto_1
    return-object v0

    :sswitch_1
    const/16 v0, 0x30

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    sget-object v0, Lorg/luaj/vm2/LuaValue;->TRUE:Lorg/luaj/vm2/LuaBoolean;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->constant(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x23

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    sget-object v0, Lorg/luaj/vm2/LuaValue;->FALSE:Lorg/luaj/vm2/LuaBoolean;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->constant(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x34

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->numberconstant(Ljava/lang/String;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_4
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Str()Lorg/luaj/vm2/LuaString;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->constant(Lorg/luaj/vm2/LuaValue;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x4f

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {}, Lorg/luaj/vm2/ast/Exp;->varargs()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_6
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->TableConstructor()Lorg/luaj/vm2/ast/TableConstructor;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->tableconstructor(Lorg/luaj/vm2/ast/TableConstructor;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_7
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FunctionCall()Lorg/luaj/vm2/ast/FuncBody;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/ast/Exp;->anonymousfunction(Lorg/luaj/vm2/ast/FuncBody;)Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v0, v1, v2}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_1

    :sswitch_8
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->PrimaryExp()Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    move-result-object v0

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_4
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1a -> :sswitch_4
        0x1b -> :sswitch_4
        0x23 -> :sswitch_2
        0x25 -> :sswitch_7
        0x2a -> :sswitch_0
        0x30 -> :sswitch_1
        0x33 -> :sswitch_8
        0x34 -> :sswitch_3
        0x3d -> :sswitch_4
        0x3e -> :sswitch_4
        0x4b -> :sswitch_8
        0x4f -> :sswitch_5
        0x50 -> :sswitch_6
    .end sparse-switch
.end method

.method public final Stat()Lorg/luaj/vm2/ast/Stat;
    .locals 11

    const/4 v0, 0x0

    const/16 v6, 0x33

    const/16 v10, 0x22

    const/16 v9, 0x1f

    const/4 v7, -0x1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v2

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v7, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_0
    sparse-switch v1, :sswitch_data_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v4, 0x5

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v1, v4

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->b()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x24

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v6}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v4

    const/16 v1, 0x47

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v5

    const/16 v1, 0x48

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v6

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v7, :cond_1

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_1
    packed-switch v1, :pswitch_data_0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v7, 0x3

    iget v8, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v8, v1, v7

    :goto_2
    invoke-direct {p0, v9}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v1

    invoke-direct {p0, v10}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v4, v4, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v4, v5, v6, v0, v1}, Lorg/luaj/vm2/ast/Stat;->fornumeric(Ljava/lang/String;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    :goto_3
    return-object v0

    :cond_0
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v1, 0x46

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    goto :goto_3

    :sswitch_1
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Label()Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_2
    const/16 v0, 0x1e

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {}, Lorg/luaj/vm2/ast/Stat;->breakstat()Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_3
    const/16 v0, 0x26

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v6}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Stat;->gotostat(Ljava/lang/String;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_4
    invoke-direct {p0, v9}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v0

    invoke-direct {p0, v10}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Stat;->block(Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_5
    const/16 v0, 0x32

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    invoke-direct {p0, v9}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v1

    invoke-direct {p0, v10}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {v0, v1}, Lorg/luaj/vm2/ast/Stat;->whiledo(Lorg/luaj/vm2/ast/Exp;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_6
    const/16 v0, 0x2e

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v0

    const/16 v1, 0x31

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/ast/Stat;->repeatuntil(Lorg/luaj/vm2/ast/Block;Lorg/luaj/vm2/ast/Exp;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :sswitch_7
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->IfThenElse()Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto :goto_3

    :cond_1
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto/16 :goto_1

    :pswitch_0
    const/16 v0, 0x48

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Exp()Lorg/luaj/vm2/ast/Exp;

    move-result-object v0

    goto/16 :goto_2

    :cond_2
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v7, :cond_3

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_4
    packed-switch v1, :pswitch_data_1

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v4, 0x6

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v1, v4

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    const/16 v0, 0x29

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v6}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FuncBody()Lorg/luaj/vm2/ast/FuncBody;

    move-result-object v1

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/luaj/vm2/ast/Stat;->localfunctiondef(Ljava/lang/String;Lorg/luaj/vm2/ast/FuncBody;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto/16 :goto_3

    :cond_3
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_4

    :pswitch_1
    const/16 v0, 0x24

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0x28

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v9}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->Block()Lorg/luaj/vm2/ast/Block;

    move-result-object v4

    invoke-direct {p0, v10}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-static {v0, v1, v4}, Lorg/luaj/vm2/ast/Stat;->forgeneric(Ljava/util/List;Ljava/util/List;Lorg/luaj/vm2/ast/Block;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto/16 :goto_3

    :pswitch_2
    const/16 v0, 0x25

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FuncName()Lorg/luaj/vm2/ast/FuncName;

    move-result-object v0

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FuncBody()Lorg/luaj/vm2/ast/FuncBody;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/luaj/vm2/ast/Stat;->functiondef(Lorg/luaj/vm2/ast/FuncName;Lorg/luaj/vm2/ast/FuncBody;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto/16 :goto_3

    :cond_4
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v7, :cond_5

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_5
    sparse-switch v1, :sswitch_data_1

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v1, 0x7

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v7}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_5
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_5

    :sswitch_8
    const/16 v1, 0x29

    invoke-direct {p0, v1}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->NameList()Ljava/util/List;

    move-result-object v4

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v1, v7, :cond_6

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v1

    :goto_6
    packed-switch v1, :pswitch_data_2

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/4 v5, 0x4

    iget v6, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v6, v1, v5

    :goto_7
    invoke-static {v4, v0}, Lorg/luaj/vm2/ast/Stat;->localassignment(Ljava/util/List;Ljava/util/List;)Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto/16 :goto_3

    :cond_6
    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_6

    :pswitch_3
    const/16 v0, 0x47

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ExpList()Ljava/util/List;

    move-result-object v0

    goto :goto_7

    :sswitch_9
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->ExprStat()Lorg/luaj/vm2/ast/Stat;

    move-result-object v0

    invoke-direct {p0, v0, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    goto/16 :goto_3

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e -> :sswitch_2
        0x1f -> :sswitch_4
        0x26 -> :sswitch_3
        0x27 -> :sswitch_7
        0x2e -> :sswitch_6
        0x32 -> :sswitch_5
        0x41 -> :sswitch_1
        0x46 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x48
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x24
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        0x29 -> :sswitch_8
        0x33 -> :sswitch_9
        0x4b -> :sswitch_9
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x47
        :pswitch_3
    .end packed-switch
.end method

.method public final Str()Lorg/luaj/vm2/LuaString;
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x16

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x3d

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->quoteString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    :goto_1
    return-object v0

    :sswitch_1
    const/16 v0, 0x3e

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->charString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->longString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1

    :sswitch_3
    const/16 v0, 0x18

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->longString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1

    :sswitch_4
    const/16 v0, 0x19

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->longString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1

    :sswitch_5
    const/16 v0, 0x1a

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->longString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1

    :sswitch_6
    const/16 v0, 0x1b

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->image:Ljava/lang/String;

    invoke-static {v0}, Lorg/luaj/vm2/ast/Str;->longString(Ljava/lang/String;)Lorg/luaj/vm2/LuaString;

    move-result-object v0

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_2
        0x18 -> :sswitch_3
        0x19 -> :sswitch_4
        0x1a -> :sswitch_5
        0x1b -> :sswitch_6
        0x3d -> :sswitch_0
        0x3e -> :sswitch_1
    .end sparse-switch
.end method

.method public final TableConstructor()Lorg/luaj/vm2/ast/TableConstructor;
    .locals 6

    new-instance v1, Lorg/luaj/vm2/ast/TableConstructor;

    invoke-direct {v1}, Lorg/luaj/vm2/ast/TableConstructor;-><init>()V

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->a()J

    move-result-wide v2

    const/16 v0, 0x50

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v4, 0x1b

    iget v5, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v5, v0, v4

    :goto_1
    const/16 v0, 0x51

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    invoke-direct {p0, v1, v2, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/SyntaxElement;J)V

    return-object v1

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->FieldList()Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lorg/luaj/vm2/ast/TableConstructor;->fields:Ljava/util/List;

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0x1a -> :sswitch_0
        0x1b -> :sswitch_0
        0x23 -> :sswitch_0
        0x25 -> :sswitch_0
        0x2a -> :sswitch_0
        0x2b -> :sswitch_0
        0x30 -> :sswitch_0
        0x33 -> :sswitch_0
        0x34 -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x45 -> :sswitch_0
        0x4b -> :sswitch_0
        0x4d -> :sswitch_0
        0x4f -> :sswitch_0
        0x50 -> :sswitch_0
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public final Unop()I
    .locals 4

    const/4 v3, -0x1

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    if-ne v0, v3, :cond_0

    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->t()I

    move-result v0

    :goto_0
    sparse-switch v0, :sswitch_data_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    const/16 v1, 0x21

    iget v2, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    aput v2, v0, v1

    invoke-direct {p0, v3}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    invoke-direct {v0}, Lorg/luaj/vm2/parser/ParseException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    goto :goto_0

    :sswitch_0
    const/16 v0, 0x53

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x13

    :goto_1
    return v0

    :sswitch_1
    const/16 v0, 0x2b

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x14

    goto :goto_1

    :sswitch_2
    const/16 v0, 0x45

    invoke-direct {p0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(I)Lorg/luaj/vm2/parser/Token;

    const/16 v0, 0x15

    goto :goto_1

    :sswitch_data_0
    .sparse-switch
        0x2b -> :sswitch_1
        0x45 -> :sswitch_2
        0x53 -> :sswitch_0
    .end sparse-switch
.end method

.method public final VarExp()Lorg/luaj/vm2/ast/Exp$VarExp;
    .locals 1

    invoke-virtual {p0}, Lorg/luaj/vm2/parser/LuaParser;->PrimaryExp()Lorg/luaj/vm2/ast/Exp$PrimaryExp;

    move-result-object v0

    invoke-static {v0}, Lorg/luaj/vm2/parser/LuaParser;->a(Lorg/luaj/vm2/ast/Exp$PrimaryExp;)Lorg/luaj/vm2/ast/Exp$VarExp;

    move-result-object v0

    return-object v0
.end method

.method public final disable_tracing()V
    .locals 0

    return-void
.end method

.method public final enable_tracing()V
    .locals 0

    return-void
.end method

.method public generateParseException()Lorg/luaj/vm2/parser/ParseException;
    .locals 8

    const/16 v7, 0x5f

    const/4 v6, 0x1

    const/4 v0, 0x0

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-array v3, v7, [Z

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->p:I

    if-ltz v1, :cond_0

    iget v1, p0, Lorg/luaj/vm2/parser/LuaParser;->p:I

    aput-boolean v6, v3, v1

    const/4 v1, -0x1

    iput v1, p0, Lorg/luaj/vm2/parser/LuaParser;->p:I

    :cond_0
    move v2, v0

    :goto_0
    const/16 v1, 0x22

    if-ge v2, v1, :cond_5

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->f:[I

    aget v1, v1, v2

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    if-ne v1, v4, :cond_4

    move v1, v0

    :goto_1
    const/16 v4, 0x20

    if-ge v1, v4, :cond_4

    sget-object v4, Lorg/luaj/vm2/parser/LuaParser;->g:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    aput-boolean v6, v3, v1

    :cond_1
    sget-object v4, Lorg/luaj/vm2/parser/LuaParser;->h:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_2

    add-int/lit8 v4, v1, 0x20

    aput-boolean v6, v3, v4

    :cond_2
    sget-object v4, Lorg/luaj/vm2/parser/LuaParser;->i:[I

    aget v4, v4, v2

    shl-int v5, v6, v1

    and-int/2addr v4, v5

    if-eqz v4, :cond_3

    add-int/lit8 v4, v1, 0x40

    aput-boolean v6, v3, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_5
    move v1, v0

    :goto_2
    if-ge v1, v7, :cond_7

    aget-boolean v2, v3, v1

    if-eqz v2, :cond_6

    new-array v2, v6, [I

    iput-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    aput v1, v2, v0

    iget-object v2, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    iget-object v4, p0, Lorg/luaj/vm2/parser/LuaParser;->o:[I

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->r:I

    iput-boolean v6, p0, Lorg/luaj/vm2/parser/LuaParser;->k:Z

    move v2, v0

    :goto_3
    const/4 v1, 0x7

    if-ge v2, v1, :cond_a

    :try_start_0
    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->j:[Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    aget-object v1, v1, v2

    :cond_8
    iget v3, v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->gen:I

    iget v4, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    if-le v3, v4, :cond_9

    iget v3, v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->arg:I

    iput v3, p0, Lorg/luaj/vm2/parser/LuaParser;->d:I

    iget-object v3, v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->first:Lorg/luaj/vm2/parser/Token;

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->b:Lorg/luaj/vm2/parser/Token;

    iput-object v3, p0, Lorg/luaj/vm2/parser/LuaParser;->c:Lorg/luaj/vm2/parser/Token;

    packed-switch v2, :pswitch_data_0

    :cond_9
    :goto_4
    iget-object v1, v1, Lorg/luaj/vm2/parser/LuaParser$JJCalls;->next:Lorg/luaj/vm2/parser/LuaParser$JJCalls;

    if-nez v1, :cond_8

    :goto_5
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_3

    :pswitch_0
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->n()Z

    goto :goto_4

    :catch_0
    move-exception v1

    goto :goto_5

    :pswitch_1
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->l()Z

    goto :goto_4

    :pswitch_2
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->i()Z

    goto :goto_4

    :pswitch_3
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->m()Z

    goto :goto_4

    :pswitch_4
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->j()Z

    goto :goto_4

    :pswitch_5
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->p()Z

    goto :goto_4

    :pswitch_6
    invoke-direct {p0}, Lorg/luaj/vm2/parser/LuaParser;->q()Z
    :try_end_0
    .catch Lorg/luaj/vm2/parser/LuaParser$LookaheadSuccess; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :cond_a
    iput-boolean v0, p0, Lorg/luaj/vm2/parser/LuaParser;->k:Z

    invoke-direct {p0, v0, v0}, Lorg/luaj/vm2/parser/LuaParser;->a(II)V

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v2, v1, [[I

    move v1, v0

    :goto_6
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_b

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->n:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_6

    :cond_b
    new-instance v0, Lorg/luaj/vm2/parser/ParseException;

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    sget-object v3, Lorg/luaj/vm2/parser/LuaParser;->tokenImage:[Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lorg/luaj/vm2/parser/ParseException;-><init>(Lorg/luaj/vm2/parser/Token;[[I[Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public getCharStream()Lorg/luaj/vm2/parser/SimpleCharStream;
    .locals 1

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->jj_input_stream:Lorg/luaj/vm2/parser/SimpleCharStream;

    return-object v0
.end method

.method public final getNextToken()Lorg/luaj/vm2/parser/Token;
    .locals 2

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v0, v0, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->a:I

    iget v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/luaj/vm2/parser/LuaParser;->e:I

    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    invoke-virtual {v1}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->getNextToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v1

    iput-object v1, v0, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    iput-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    goto :goto_0
.end method

.method public final getToken(I)Lorg/luaj/vm2/parser/Token;
    .locals 3

    iget-object v1, p0, Lorg/luaj/vm2/parser/LuaParser;->token:Lorg/luaj/vm2/parser/Token;

    const/4 v0, 0x0

    move-object v2, v1

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v0, v2, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    move-object v2, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/luaj/vm2/parser/LuaParser;->token_source:Lorg/luaj/vm2/parser/LuaParserTokenManager;

    invoke-virtual {v0}, Lorg/luaj/vm2/parser/LuaParserTokenManager;->getNextToken()Lorg/luaj/vm2/parser/Token;

    move-result-object v0

    iput-object v0, v2, Lorg/luaj/vm2/parser/Token;->next:Lorg/luaj/vm2/parser/Token;

    goto :goto_1

    :cond_1
    return-object v2
.end method
