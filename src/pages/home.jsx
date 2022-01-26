export default function Home() {
    return (
        <div>
            <center>
                <h1>Zakariya Oulhadj</h1>

                <img src={process.env.PUBLIC_URL + "./me.jpg"} alt="Picture of me" width="250px" />
            </center>
        </div>
    );
}
