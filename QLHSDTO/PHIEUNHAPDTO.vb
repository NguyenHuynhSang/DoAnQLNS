Public Class PHIEUNHAPDTO

    Private maphieunhap As String
    Private ngaynhapsach As DateTime
    Private soluongnhap As Int32
    Private tensach As String
    Private theloai As String
    Private tacgia As String
    Private v1 As Object
    Private v2 As Object
    Private v3 As Object
    Private v4 As Object
    Private v5 As Object
    Private v6 As Object

    Public Sub New()
    End Sub

    Public Sub New(v1 As Object, v2 As Object, v3 As Object, v4 As Object, v5 As Object, v6 As Object)
        Me.v1 = v1
        Me.v2 = v2
        Me.v3 = v3
        Me.v4 = v4
        Me.v5 = v5
        Me.v6 = v6
    End Sub

    Public Sub New(maPN As String, ngaynhapsach As DateTime, soluongnhap As Int32, tensach As String, theloai As String, tacgia As String)
        Me.Maphieunhap1 = maPN
        Me.Ngaynhapsach1 = ngaynhapsach
        Me.Soluongnhap1 = soluongnhap
        Me.Tensach1 = tensach
        Me.Theloai1 = theloai
        Me.Tacgia1 = tacgia
    End Sub
    Public Property Maphieunhap1 As String
        Get
            Return maphieunhap
        End Get
        Set(value As String)
            maphieunhap = value
        End Set
    End Property

    Public Property Ngaynhapsach1 As Date
        Get
            Return ngaynhapsach
        End Get
        Set(value As Date)
            ngaynhapsach = value
        End Set
    End Property

    Public Property Soluongnhap1 As Integer
        Get
            Return soluongnhap
        End Get
        Set(value As Integer)
            soluongnhap = value
        End Set
    End Property

    Public Property Tensach1 As String
        Get
            Return tensach
        End Get
        Set(value As String)
            tensach = value
        End Set
    End Property

    Public Property Theloai1 As String
        Get
            Return theloai
        End Get
        Set(value As String)
            theloai = value
        End Set
    End Property

    Public Property Tacgia1 As String
        Get
            Return tacgia
        End Get
        Set(value As String)
            tacgia = value
        End Set
    End Property
End Class
