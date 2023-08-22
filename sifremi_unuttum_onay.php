<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-4bw+/aepP/YC94hEpVNVgiZdgIC5+VKNBQNGCHeKRQN+PtmoHDEXuppvnDJzQIu9" crossorigin="anonymous" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Admin Login</title>
    <style>
        body{
            background-color: #f5f5f5;
        }

        .page-ctr {
            background-color: #fff;
            position: fixed;
            max-width: 400px;
            width: 100%;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            border-radius: 0.50rem;
            overflow: hidden;
            box-shadow: 0 2px 4px #aaa;
        }

        .page-header {
            background: linear-gradient(15deg, #13547a 0%, #80d0c7 100%);
            backdrop-filter: blur(10px);
            padding: 1.5rem;
        }

        .page-header h3 {
            font-size: 2.5rem;
            font-weight: 600;
            color: #f9f9f9;
            text-shadow: 0 0 3px #4b5069;
            text-align: center;
        }

        .loginBtn {
            background: linear-gradient(15deg, #13547a 0%, #80d0c7 100%);
            backdrop-filter: blur(10px);
            color: #fff;
        }
    </style>
</head>
<body>

<div class="page-ctr">
    <div class="page-header">
        <h3>Yeni Şifre</h3>
    </div>
    <div class="p-3">
        <form action="sifremi_unuttum_onay_kodu.php" method="POST">
            <div class="mb-1">
                <label for="inpUsername" class="fw-bold mb-1">Yeni şifre</label>
                <input type="password" name="yeni_sifre" class="form-control">
            </div>
            <div class="mb-1">
                <label for="inpUsername" class="fw-bold mb-1">Onay Kodu</label>
                <input type="text" name="onay_kodu" class="form-control">
            </div>
            <button class="btn btn-info w-100 mt-3 loginBtn" type="submit">Gönder</button>
        </form>
    </div>
</div>

</body>
</html>